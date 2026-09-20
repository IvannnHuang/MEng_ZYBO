#include "lorenz_plot.h"
#include "xil_io.h"
#include <stdio.h>
#include <string.h>

/*
 * Lorenz solver AXI4-Lite IP register offsets (see the IP itself):
 * reg0 = X, reg1 = Y, reg2 = Z, all latched from the same clock edge.
 * The IP's base address is passed into LorenzPlot_Update() rather than
 * referenced here by name, so this file works no matter what the IP
 * instance is called in the block design.
 */
#define LORENZ_X_OFFSET 0x0
#define LORENZ_Y_OFFSET 0x4
#define LORENZ_Z_OFFSET 0x8
/*
 * Bit 0: 1 = run, 0 = pause. Bits [31:1]: speed divider N - the
 * solver advances one step every (N+1) AXI clock cycles instead of
 * every cycle (0 = full speed). See lorenz_reader.v.
 */
#define LORENZ_CTRL_OFFSET 0xC
#define LORENZ_CTRL_RUN_BIT     0x1u
#define LORENZ_CTRL_SPEED_SHIFT 1u

/* Q7.20 fixed point <-> float, same format the IP/solver uses. */
typedef signed int lorenz_fix;
#define LORENZ_FIX2FLOAT(a) (((float)(a)) / 1048576.0)

/*
 * 5x7 bitmap font for digits '0'-'9', plus '-' and '.', used to draw the
 * live X/Y/Z numeric readouts. Kept local to this file so lorenz_plot has
 * no dependency on switch_reader. Each entry is 7 rows, 5 bits per row
 * (bit 4 = leftmost pixel of the glyph).
 */
static const u8 font5x7_digits[10][7] = {
	{0x0E,0x11,0x13,0x15,0x19,0x11,0x0E}, /* 0 */
	{0x04,0x0C,0x04,0x04,0x04,0x04,0x0E}, /* 1 */
	{0x0E,0x11,0x01,0x02,0x04,0x08,0x1F}, /* 2 */
	{0x1F,0x02,0x04,0x02,0x01,0x11,0x0E}, /* 3 */
	{0x02,0x06,0x0A,0x12,0x1F,0x02,0x02}, /* 4 */
	{0x1F,0x10,0x1E,0x01,0x01,0x11,0x0E}, /* 5 */
	{0x06,0x08,0x10,0x1E,0x11,0x11,0x0E}, /* 6 */
	{0x1F,0x01,0x02,0x04,0x08,0x08,0x08}, /* 7 */
	{0x0E,0x11,0x11,0x0E,0x11,0x11,0x0E}, /* 8 */
	{0x0E,0x11,0x11,0x0F,0x01,0x02,0x0C}, /* 9 */
};

static const u8 font5x7_minus[7] = {0x00,0x00,0x00,0x1F,0x00,0x00,0x00};
static const u8 font5x7_point[7] = {0x00,0x00,0x00,0x00,0x00,0x0C,0x0C};

static const u8 *ResolveGlyph(char c)
{
	if (c >= '0' && c <= '9')
		return font5x7_digits[c - '0'];
	if (c == '-')
		return font5x7_minus;
	if (c == '.')
		return font5x7_point;
	return NULL;
}

static void ClearRect(u8 *frame, u32 stride, u32 xOrigin, u32 yOrigin,
                       u32 width, u32 height)
{
	u32 x, y, pixelAddr;

	for (y = 0; y < height; y++)
	{
		for (x = 0; x < width; x++)
		{
			pixelAddr = ((xOrigin + x) * 3) + ((yOrigin + y) * stride);
			frame[pixelAddr]     = 0;
			frame[pixelAddr + 1] = 0;
			frame[pixelAddr + 2] = 0;
		}
	}
}

static void DrawGlyph(u8 *frame, u32 stride, const u8 rows[7],
                       u32 xOrigin, u32 yOrigin, u32 scale,
                       u8 red, u8 blue, u8 green)
{
	u32 row, col, sx, sy;
	u32 x, y, pixelAddr;

	for (row = 0; row < 7; row++)
	{
		for (col = 0; col < 5; col++)
		{
			if ((rows[row] >> (4 - col)) & 0x1)
			{
				for (sy = 0; sy < scale; sy++)
				{
					for (sx = 0; sx < scale; sx++)
					{
						x = xOrigin + col * scale + sx;
						y = yOrigin + row * scale + sy;
						pixelAddr = (x * 3) + (y * stride);
						frame[pixelAddr]     = red;
						frame[pixelAddr + 1] = blue;
						frame[pixelAddr + 2] = green;
					}
				}
			}
		}
	}
}

/*
 * Renders a signed float with a fixed number of decimal places (e.g.
 * decimals=2 -> "-3.42") directly into the frame buffer, using the 5x7
 * font above. frame/stride use the same layout as the rest of this demo.
 */
static void LorenzPlot_DrawFloat(u8 *frame, u32 stride, float value, int decimals,
                                  u32 xOrigin, u32 yOrigin, u32 scale,
                                  u8 red, u8 blue, u8 green)
{
	char text[16];
	u32 i, len;
	u32 glyphAdvance = (5 + 1) * scale;
	const u32 maxChars = 12; /* enough for e.g. "-1234.5678" plus margin */

	ClearRect(frame, stride, xOrigin, yOrigin, maxChars * glyphAdvance, 7 * scale);

	snprintf(text, sizeof(text), "%.*f", decimals, value);
	len = strlen(text);

	for (i = 0; i < len; i++)
	{
		const u8 *glyph = ResolveGlyph(text[i]);
		if (glyph != NULL)
		{
			DrawGlyph(frame, stride, glyph, xOrigin + i * glyphAdvance, yOrigin,
			          scale, red, blue, green);
		}
	}
}

/*
 * Phase-plane projection plot: accumulates points over time (does NOT
 * erase between samples), so the classic Lorenz "butterfly" shape builds
 * up visually as the solver runs. hVal maps to the horizontal axis, vVal
 * to the vertical axis (flipped so larger values plot higher on screen).
 */
typedef struct {
	u32 xOrigin;
	u32 yOrigin;
	u32 width;
	u32 height;
	float minH, maxH;
	float minV, maxV;
	u8 red, blue, green;
} PhasePlot;

static PhasePlot plotXY, plotYZ, plotXZ;

static void PhasePlot_Init(PhasePlot *plot, u32 xOrigin, u32 yOrigin,
                            u32 width, u32 height,
                            float minH, float maxH, float minV, float maxV,
                            u8 red, u8 blue, u8 green)
{
	plot->xOrigin = xOrigin;
	plot->yOrigin = yOrigin;
	plot->width = width;
	plot->height = height;
	plot->minH = minH;
	plot->maxH = maxH;
	plot->minV = minV;
	plot->maxV = maxV;
	plot->red = red;
	plot->blue = blue;
	plot->green = green;
}

static void PhasePlot_Clear(u8 *frame, u32 stride, PhasePlot *plot)
{
	u32 x, y, addr;

	for (y = 0; y < plot->height; y++)
	{
		for (x = 0; x < plot->width; x++)
		{
			addr = ((plot->xOrigin + x) * 3) + ((plot->yOrigin + y) * stride);
			frame[addr]     = 0;
			frame[addr + 1] = 0;
			frame[addr + 2] = 0;
		}
	}
}

static void PhasePlot_AddPoint(u8 *frame, u32 stride, PhasePlot *plot,
                                float hVal, float vVal)
{
	float th, tv;
	u32 px, py, dx, dy, x, y, addr;

	th = (hVal - plot->minH) / (plot->maxH - plot->minH);
	if (th < 0.0f) th = 0.0f;
	if (th > 1.0f) th = 1.0f;

	tv = (vVal - plot->minV) / (plot->maxV - plot->minV);
	if (tv < 0.0f) tv = 0.0f;
	if (tv > 1.0f) tv = 1.0f;

	px = (u32) (th * (plot->width - 1));
	py = (plot->height - 1) - (u32) (tv * (plot->height - 1));

	/* Draw a small 2x2 dot so points are visible on an HDMI display */
	for (dy = 0; dy < 2 && (py + dy) < plot->height; dy++)
	{
		for (dx = 0; dx < 2 && (px + dx) < plot->width; dx++)
		{
			x = plot->xOrigin + px + dx;
			y = plot->yOrigin + py + dy;
			addr = (x * 3) + (y * stride);
			frame[addr]     = plot->red;
			frame[addr + 1] = plot->blue;
			frame[addr + 2] = plot->green;
		}
	}
}

/*
 * Layout (fits inside even the smallest supported resolution, 640x480):
 * three 180x180 projection plots side by side, with the live X/Y/Z
 * readouts stacked below them, color-matched to each plot's axis color.
 */
#define PLOT_SIZE   180
#define PLOT_Y      20
#define TEXT_Y      220
#define TEXT_SCALE  4

void LorenzPlot_Init(void)
{
	/* X, Y ranges follow the classic Lorenz attractor envelope for
	 * sigma=10, rho=28, beta=8/3; Z runs roughly 0-50. */
	PhasePlot_Init(&plotXY, 20,  PLOT_Y, PLOT_SIZE, PLOT_SIZE,
	               -20.0f, 20.0f, -25.0f, 25.0f, 255, 0,   0);   /* X-Y, red */
	PhasePlot_Init(&plotYZ, 220, PLOT_Y, PLOT_SIZE, PLOT_SIZE,
	               -25.0f, 25.0f,   0.0f, 50.0f, 0,   255, 0);   /* Y-Z, green */
	PhasePlot_Init(&plotXZ, 420, PLOT_Y, PLOT_SIZE, PLOT_SIZE,
	               -20.0f, 20.0f,   0.0f, 50.0f, 0,   0,   255); /* X-Z, blue */
}

void LorenzPlot_ClearAll(u8 *frame, u32 stride)
{
	PhasePlot_Clear(frame, stride, &plotXY);
	PhasePlot_Clear(frame, stride, &plotYZ);
	PhasePlot_Clear(frame, stride, &plotXZ);
}

void LorenzPlot_Update(u8 *frame, u32 stride, u32 baseAddr)
{
	lorenz_fix xRaw = (lorenz_fix) Xil_In32(baseAddr + LORENZ_X_OFFSET);
	lorenz_fix yRaw = (lorenz_fix) Xil_In32(baseAddr + LORENZ_Y_OFFSET);
	lorenz_fix zRaw = (lorenz_fix) Xil_In32(baseAddr + LORENZ_Z_OFFSET);
	float x = (float) LORENZ_FIX2FLOAT(xRaw);
	float y = (float) LORENZ_FIX2FLOAT(yRaw);
	float z = (float) LORENZ_FIX2FLOAT(zRaw);

	PhasePlot_AddPoint(frame, stride, &plotXY, x, y);
	PhasePlot_AddPoint(frame, stride, &plotYZ, y, z);
	PhasePlot_AddPoint(frame, stride, &plotXZ, x, z);

	/* Live numeric readouts, color-matched: red=X, green=Y, blue=Z */
	LorenzPlot_DrawFloat(frame, stride, x, 2, 20, TEXT_Y,             TEXT_SCALE, 255, 0,   0);
	LorenzPlot_DrawFloat(frame, stride, y, 2, 20, TEXT_Y + 40,        TEXT_SCALE, 0,   255, 0);
	LorenzPlot_DrawFloat(frame, stride, z, 2, 20, TEXT_Y + 80,        TEXT_SCALE, 0,   0,   255);
}

/*
 * Start/Stop/SetSpeed all read-modify-write LORENZ_CTRL_OFFSET so
 * they only ever touch their own field - starting/stopping never
 * resets the speed you last set, and changing speed never pauses (or
 * un-pauses) the solver.
 */
void Lorenz_Start(u32 baseAddr)
{
	u32 ctrl = Xil_In32(baseAddr + LORENZ_CTRL_OFFSET);
	Xil_Out32(baseAddr + LORENZ_CTRL_OFFSET, ctrl | LORENZ_CTRL_RUN_BIT);
}

void Lorenz_Stop(u32 baseAddr)
{
	u32 ctrl = Xil_In32(baseAddr + LORENZ_CTRL_OFFSET);
	Xil_Out32(baseAddr + LORENZ_CTRL_OFFSET, ctrl & ~LORENZ_CTRL_RUN_BIT);
}

void Lorenz_SetSpeed(u32 baseAddr, u32 cyclesPerStep)
{
	u32 ctrl = Xil_In32(baseAddr + LORENZ_CTRL_OFFSET);
	u32 divVal = (cyclesPerStep > 0) ? (cyclesPerStep - 1) : 0;
	Xil_Out32(baseAddr + LORENZ_CTRL_OFFSET,
	          (ctrl & LORENZ_CTRL_RUN_BIT) | (divVal << LORENZ_CTRL_SPEED_SHIFT));
}
