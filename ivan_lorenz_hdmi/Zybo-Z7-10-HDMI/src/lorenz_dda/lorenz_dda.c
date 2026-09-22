#include "lorenz_dda.h"
#include "xil_io.h"
#include <stdio.h>
#include <string.h>

/* lorenz_dda_driver AXI4-Lite register offsets - see lorenz_dda_driver_slave_lite_v1_0_S00_AXI.v's REG_* localparams (word index * 4 = byte offset). */
#define LORENZ_DDA_CTRL_OFFSET   0x00 /* R/W  bit0=enable(pulse), bit1=load(pulse) */
#define LORENZ_DDA_STATUS_OFFSET 0x04 /* R    bit0=done (1 AXI-clock pulse only) */
#define LORENZ_DDA_XINIT_OFFSET  0x08 /* R/W  signed Q6.20 */
#define LORENZ_DDA_YINIT_OFFSET  0x0C /* R/W  signed Q6.20 */
#define LORENZ_DDA_ZINIT_OFFSET  0x10 /* R/W  signed Q6.20 */
#define LORENZ_DDA_SIGMA_OFFSET  0x14 /* R/W  signed Q6.20 */
#define LORENZ_DDA_RHO_OFFSET    0x18 /* R/W  signed Q6.20 */
#define LORENZ_DDA_BETA_OFFSET   0x1C /* R/W  signed Q6.20 */
#define LORENZ_DDA_DT_OFFSET     0x20 /* R/W  raw right-shift count, NOT Q6.20 - see header */
#define LORENZ_DDA_XNEXT_OFFSET  0x24 /* R    signed Q6.20 */
#define LORENZ_DDA_YNEXT_OFFSET  0x28 /* R    signed Q6.20 */
#define LORENZ_DDA_ZNEXT_OFFSET  0x2C /* R    signed Q6.20 */

#define LORENZ_DDA_CTRL_ENABLE_BIT 0x1u
#define LORENZ_DDA_CTRL_LOAD_BIT   0x2u

/* Q6.20 fixed point <-> float, same format the IP/solver uses. */
typedef signed int lorenz_fix;
#define LORENZ_FIX2FLOAT(a) (((float)(a)) / 1048576.0f)
#define LORENZ_FLOAT2FIX(f) ((lorenz_fix)((f) * 1048576.0f))

/* 5x7 bitmap font: digits, '-', '.', ':', and the uppercase letters needed for the panel labels (X/Y/Z/S/R/B/D). Each entry is 7 rows, 5 bits per row (bit 4 = leftmost pixel). */
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
static const u8 font5x7_colon[7] = {0x00,0x00,0x04,0x00,0x04,0x00,0x00};
static const u8 font5x7_X[7]     = {0x11,0x0A,0x04,0x04,0x04,0x0A,0x11};
static const u8 font5x7_Y[7]     = {0x11,0x0A,0x04,0x04,0x04,0x04,0x04};
static const u8 font5x7_Z[7]     = {0x1F,0x01,0x02,0x04,0x08,0x10,0x1F};
static const u8 font5x7_S[7]     = {0x0F,0x10,0x10,0x0E,0x01,0x01,0x1E};
static const u8 font5x7_R[7]     = {0x1E,0x11,0x11,0x1E,0x14,0x12,0x11};
static const u8 font5x7_B[7]     = {0x1E,0x11,0x11,0x1E,0x11,0x11,0x1E};
static const u8 font5x7_D[7]     = {0x1C,0x12,0x11,0x11,0x11,0x12,0x1C};

static const u8 *ResolveGlyph(char c)
{
	if (c >= '0' && c <= '9')
		return font5x7_digits[c - '0'];
	switch (c)
	{
	case '-': return font5x7_minus;
	case '.': return font5x7_point;
	case ':': return font5x7_colon;
	case 'X': return font5x7_X;
	case 'Y': return font5x7_Y;
	case 'Z': return font5x7_Z;
	case 'S': return font5x7_S;
	case 'R': return font5x7_R;
	case 'B': return font5x7_B;
	case 'D': return font5x7_D;
	default:  return NULL;
	}
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

/* Draws a short label (only chars ResolveGlyph knows) left to right at (xOrigin, yOrigin); unlike DrawFloat below, it does NOT clear its background first - labels are drawn once and never change. */
static void DrawLabel(u8 *frame, u32 stride, const char *label,
                       u32 xOrigin, u32 yOrigin, u32 scale,
                       u8 red, u8 blue, u8 green)
{
	u32 i, glyphAdvance = (5 + 1) * scale;

	for (i = 0; label[i] != '\0'; i++)
	{
		const u8 *glyph = ResolveGlyph(label[i]);
		if (glyph != NULL)
			DrawGlyph(frame, stride, glyph, xOrigin + i * glyphAdvance, yOrigin,
			          scale, red, blue, green);
	}
}

/* Renders a signed float with a fixed number of decimals (e.g. decimals=2 -> "-3.42") into the frame buffer using the 5x7 font above. */
static void LorenzDDAPlot_DrawFloat(u8 *frame, u32 stride, float value, int decimals,
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

/* Phase-plane projection plot: accumulates points over time (does NOT erase between samples), so the attractor's shape builds up visually. hVal maps to the horizontal axis, vVal to the vertical (flipped so larger values plot higher). */
typedef struct {
	u32 xOrigin;
	u32 yOrigin;
	u32 width;
	u32 height;
	float minH, maxH;
	float minV, maxV;
	u8 red, blue, green;
	int hasLast; /* 0 until the first point is plotted, or right after a clear */
	int lastPx, lastPy;
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
	plot->hasLast = 0;
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

	/* Nothing on screen to connect a line to anymore. */
	plot->hasLast = 0;
}

/* Small 2x2 dot so a single point is still visible on an HDMI display. */
static void PhasePlot_DrawDot(u8 *frame, u32 stride, PhasePlot *plot, int px, int py)
{
	int dx, dy, x, y;
	u32 addr;

	for (dy = 0; dy < 2 && (py + dy) < (int) plot->height; dy++)
	{
		for (dx = 0; dx < 2 && (px + dx) < (int) plot->width; dx++)
		{
			x = (int) plot->xOrigin + px + dx;
			y = (int) plot->yOrigin + py + dy;
			addr = ((u32) x * 3) + ((u32) y * stride);
			frame[addr]     = plot->red;
			frame[addr + 1] = plot->blue;
			frame[addr + 2] = plot->green;
		}
	}
}

/* Bresenham line between two absolute pixel coordinates; callers only ever pass in-bounds points, so no clipping is needed. Also used standalone to draw the quadrant divider lines. */
static void PhasePlot_DrawLine(u8 *frame, u32 stride, int x0, int y0, int x1, int y1,
                                u8 red, u8 blue, u8 green)
{
	int dx = (x1 > x0) ? (x1 - x0) : (x0 - x1);
	int dy = (y1 > y0) ? (y0 - y1) : (y1 - y0); /* negative abs(y1-y0) */
	int sx = (x0 < x1) ? 1 : -1;
	int sy = (y0 < y1) ? 1 : -1;
	int err = dx + dy;
	int e2;
	u32 addr;

	for (;;)
	{
		addr = ((u32) x0 * 3) + ((u32) y0 * stride);
		frame[addr]     = red;
		frame[addr + 1] = blue;
		frame[addr + 2] = green;

		if (x0 == x1 && y0 == y1)
			break;

		e2 = 2 * err;
		if (e2 >= dy) { err += dy; x0 += sx; }
		if (e2 <= dx) { err += dx; y0 += sy; }
	}
}

static void PhasePlot_AddPoint(u8 *frame, u32 stride, PhasePlot *plot,
                                float hVal, float vVal)
{
	float th, tv;
	int px, py, dx, dy;

	th = (hVal - plot->minH) / (plot->maxH - plot->minH);
	if (th < 0.0f) th = 0.0f;
	if (th > 1.0f) th = 1.0f;

	tv = (vVal - plot->minV) / (plot->maxV - plot->minV);
	if (tv < 0.0f) tv = 0.0f;
	if (tv > 1.0f) tv = 1.0f;

	px = (int) (th * (plot->width - 1));
	py = (int) (plot->height - 1) - (int) (tv * (plot->height - 1));

	if (plot->hasLast)
	{
		dx = (px > plot->lastPx) ? (px - plot->lastPx) : (plot->lastPx - px);
		dy = (py > plot->lastPy) ? (py - plot->lastPy) : (plot->lastPy - py);

		/* A jump over half the plot means we straddled a LorenzDDA_Load() reset (or, since steps are batched, is just a big-but-legitimate move) - draw a fresh dot instead of a long streak. */
		if (dx > (int) (plot->width / 2) || dy > (int) (plot->height / 2))
		{
			PhasePlot_DrawDot(frame, stride, plot, px, py);
		}
		else
		{
			PhasePlot_DrawLine(frame, stride,
			                    (int) plot->xOrigin + plot->lastPx, (int) plot->yOrigin + plot->lastPy,
			                    (int) plot->xOrigin + px, (int) plot->yOrigin + py,
			                    plot->red, plot->blue, plot->green);
		}
	}
	else
	{
		PhasePlot_DrawDot(frame, stride, plot, px, py);
	}

	plot->lastPx = px;
	plot->lastPy = py;
	plot->hasLast = 1;
}

/* Four-quadrant 1920x1080 layout: XY top-left, YZ top-right, XZ bottom-left, parameter panel bottom-right, each quadrant 960x540 with a 40px margin, separated by a thin divider cross. */
#define SCREEN_W 1920
#define SCREEN_H 1080
#define QUAD_W   (SCREEN_W / 2) /* 960 */
#define QUAD_H   (SCREEN_H / 2) /* 540 */
#define QUAD_MARGIN 40

#define PLOT_W (QUAD_W - 2 * QUAD_MARGIN) /* 880 */
#define PLOT_H (QUAD_H - 2 * QUAD_MARGIN) /* 460 */

#define PANEL_X (QUAD_W + QUAD_MARGIN) /* 1000 */
#define PANEL_Y (QUAD_H + QUAD_MARGIN) /* 580 */
#define PANEL_W PLOT_W
#define PANEL_H PLOT_H
#define PANEL_TEXT_SCALE 4
#define PANEL_LINE_PITCH 42
#define PANEL_LINE_Y(i)  (PANEL_Y + 10 + (i) * PANEL_LINE_PITCH)
#define PANEL_LABEL_CHARS 2 /* e.g. "X:" */
/* Left column: init/config values (x0,y0,z0,sigma,rho,beta,dt), drawn once. Right column: live current x/y/z, redrawn every frame - rows 0-2 line up with the left column's X/Y/Z rows. */
#define PANEL_MID_X    (PANEL_X + PANEL_W / 2)
#define PANEL_LEFT_X   (PANEL_X + 10)
#define PANEL_RIGHT_X  (PANEL_MID_X + 20)
#define PANEL_LEFT_NUM_X  (PANEL_LEFT_X  + PANEL_LABEL_CHARS * (5 + 1) * PANEL_TEXT_SCALE)
#define PANEL_RIGHT_NUM_X (PANEL_RIGHT_X + PANEL_LABEL_CHARS * (5 + 1) * PANEL_TEXT_SCALE)

#define DIVIDER_GRAY 60

static void DrawPanelLabels(u8 *frame, u32 stride)
{
	/* Left column: init values. */
	DrawLabel(frame, stride, "X:", PANEL_LEFT_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);   /* red */
	DrawLabel(frame, stride, "Y:", PANEL_LEFT_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255); /* green */
	DrawLabel(frame, stride, "Z:", PANEL_LEFT_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);   /* blue */
	DrawLabel(frame, stride, "S:", PANEL_LEFT_X, PANEL_LINE_Y(3), PANEL_TEXT_SCALE, 255, 0,   255); /* yellow */
	DrawLabel(frame, stride, "R:", PANEL_LEFT_X, PANEL_LINE_Y(4), PANEL_TEXT_SCALE, 0,   255, 255); /* cyan */
	DrawLabel(frame, stride, "B:", PANEL_LEFT_X, PANEL_LINE_Y(5), PANEL_TEXT_SCALE, 255, 255, 0);   /* magenta */
	DrawLabel(frame, stride, "D:", PANEL_LEFT_X, PANEL_LINE_Y(6), PANEL_TEXT_SCALE, 255, 255, 255); /* white */

	/* Right column: live current output. */
	DrawLabel(frame, stride, "X:", PANEL_RIGHT_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);
	DrawLabel(frame, stride, "Y:", PANEL_RIGHT_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255);
	DrawLabel(frame, stride, "Z:", PANEL_RIGHT_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);
}

void LorenzDDAPlot_Init(void)
{
	/* X, Y ranges follow the classic attractor envelope for sigma=10, rho=28, beta=8/3; Z runs roughly 0-50. */
	PhasePlot_Init(&plotXY, QUAD_MARGIN,           QUAD_MARGIN,           PLOT_W, PLOT_H,
	               -20.0f, 20.0f, -25.0f, 25.0f, 255, 0,   0);   /* X-Y, red */
	PhasePlot_Init(&plotYZ, QUAD_W + QUAD_MARGIN,  QUAD_MARGIN,           PLOT_W, PLOT_H,
	               -25.0f, 25.0f,   0.0f, 50.0f, 0,   0,   255); /* Y-Z, green */
	PhasePlot_Init(&plotXZ, QUAD_MARGIN,           QUAD_H + QUAD_MARGIN,  PLOT_W, PLOT_H,
	               -20.0f, 20.0f,   0.0f, 50.0f, 0,   255, 0);   /* X-Z, blue */
}

void LorenzDDAPlot_ClearAll(u8 *frame, u32 stride)
{
	PhasePlot_Clear(frame, stride, &plotXY);
	PhasePlot_Clear(frame, stride, &plotYZ);
	PhasePlot_Clear(frame, stride, &plotXZ);
	ClearRect(frame, stride, PANEL_X, PANEL_Y, PANEL_W, PANEL_H);

	/* Quadrant divider cross, drawn once - dim so it doesn't compete with the traces or panel text. */
	PhasePlot_DrawLine(frame, stride, SCREEN_W / 2, 0, SCREEN_W / 2, SCREEN_H - 1,
	                    DIVIDER_GRAY, DIVIDER_GRAY, DIVIDER_GRAY);
	PhasePlot_DrawLine(frame, stride, 0, SCREEN_H / 2, SCREEN_W - 1, SCREEN_H / 2,
	                    DIVIDER_GRAY, DIVIDER_GRAY, DIVIDER_GRAY);

	/* Init-values / current-output column divider inside the panel. */
	PhasePlot_DrawLine(frame, stride, PANEL_MID_X, PANEL_Y, PANEL_MID_X, PANEL_Y + PANEL_H - 1,
	                    DIVIDER_GRAY, DIVIDER_GRAY, DIVIDER_GRAY);

	DrawPanelLabels(frame, stride);
}

void LorenzDDA_SetParams(u32 baseAddr, float x0, float y0, float z0,
                          float sigma, float rho, float beta, u32 dtShift)
{
	Xil_Out32(baseAddr + LORENZ_DDA_XINIT_OFFSET, (u32) LORENZ_FLOAT2FIX(x0));
	Xil_Out32(baseAddr + LORENZ_DDA_YINIT_OFFSET, (u32) LORENZ_FLOAT2FIX(y0));
	Xil_Out32(baseAddr + LORENZ_DDA_ZINIT_OFFSET, (u32) LORENZ_FLOAT2FIX(z0));
	Xil_Out32(baseAddr + LORENZ_DDA_SIGMA_OFFSET, (u32) LORENZ_FLOAT2FIX(sigma));
	Xil_Out32(baseAddr + LORENZ_DDA_RHO_OFFSET,   (u32) LORENZ_FLOAT2FIX(rho));
	Xil_Out32(baseAddr + LORENZ_DDA_BETA_OFFSET,  (u32) LORENZ_FLOAT2FIX(beta));
	/* Raw shift count, NOT Q6.20 - see the file header comment. */
	Xil_Out32(baseAddr + LORENZ_DDA_DT_OFFSET, dtShift);
}

void LorenzDDA_Load(u32 baseAddr)
{
	Xil_Out32(baseAddr + LORENZ_DDA_CTRL_OFFSET, LORENZ_DDA_CTRL_LOAD_BIT);
	Xil_Out32(baseAddr + LORENZ_DDA_CTRL_OFFSET, 0);
}

void LorenzDDA_Step(u32 baseAddr)
{
	Xil_Out32(baseAddr + LORENZ_DDA_CTRL_OFFSET, LORENZ_DDA_CTRL_ENABLE_BIT);
	Xil_Out32(baseAddr + LORENZ_DDA_CTRL_OFFSET, 0);
}

void LorenzDDA_ReadState(u32 baseAddr, float *x, float *y, float *z)
{
	*x = LORENZ_FIX2FLOAT((lorenz_fix) Xil_In32(baseAddr + LORENZ_DDA_XNEXT_OFFSET));
	*y = LORENZ_FIX2FLOAT((lorenz_fix) Xil_In32(baseAddr + LORENZ_DDA_YNEXT_OFFSET));
	*z = LORENZ_FIX2FLOAT((lorenz_fix) Xil_In32(baseAddr + LORENZ_DDA_ZNEXT_OFFSET));
}

void LorenzDDA_ReadParams(u32 baseAddr, float *sigma, float *rho, float *beta, u32 *dtShift)
{
	*sigma = LORENZ_FIX2FLOAT((lorenz_fix) Xil_In32(baseAddr + LORENZ_DDA_SIGMA_OFFSET));
	*rho   = LORENZ_FIX2FLOAT((lorenz_fix) Xil_In32(baseAddr + LORENZ_DDA_RHO_OFFSET));
	*beta  = LORENZ_FIX2FLOAT((lorenz_fix) Xil_In32(baseAddr + LORENZ_DDA_BETA_OFFSET));
	*dtShift = Xil_In32(baseAddr + LORENZ_DDA_DT_OFFSET);
}

/* Draws the left column (init/config values) once - call after LorenzDDA_SetParams()/whenever the panel is cleared, not every frame. */
void LorenzDDAPlot_ShowInitValues(u8 *frame, u32 stride, float x0, float y0, float z0,
                                   float sigma, float rho, float beta, u32 dtShift)
{
	LorenzDDAPlot_DrawFloat(frame, stride, x0,    2, PANEL_LEFT_NUM_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);
	LorenzDDAPlot_DrawFloat(frame, stride, y0,    2, PANEL_LEFT_NUM_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255);
	LorenzDDAPlot_DrawFloat(frame, stride, z0,    2, PANEL_LEFT_NUM_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);
	LorenzDDAPlot_DrawFloat(frame, stride, sigma, 2, PANEL_LEFT_NUM_X, PANEL_LINE_Y(3), PANEL_TEXT_SCALE, 255, 0,   255);
	LorenzDDAPlot_DrawFloat(frame, stride, rho,   2, PANEL_LEFT_NUM_X, PANEL_LINE_Y(4), PANEL_TEXT_SCALE, 0,   255, 255);
	LorenzDDAPlot_DrawFloat(frame, stride, beta,  2, PANEL_LEFT_NUM_X, PANEL_LINE_Y(5), PANEL_TEXT_SCALE, 255, 255, 0);
	LorenzDDAPlot_DrawFloat(frame, stride, (float) dtShift, 0, PANEL_LEFT_NUM_X, PANEL_LINE_Y(6), PANEL_TEXT_SCALE, 255, 255, 255);
}

/* Draws the right column (live current output) - called every frame. */
static void DrawCurrentValues(u8 *frame, u32 stride, float x, float y, float z)
{
	LorenzDDAPlot_DrawFloat(frame, stride, x, 2, PANEL_RIGHT_NUM_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);
	LorenzDDAPlot_DrawFloat(frame, stride, y, 2, PANEL_RIGHT_NUM_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255);
	LorenzDDAPlot_DrawFloat(frame, stride, z, 2, PANEL_RIGHT_NUM_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);
}

/* Hardware steps performed per displayed point - batched so the trace doesn't crawl one tiny Euler step at a time, without touching dtShift or the PS-side redraw cadence. */
#define LORENZ_DDA_STEPS_PER_UPDATE 16u

void LorenzDDAPlot_Update(u8 *frame, u32 stride, u32 baseAddr)
{
	float x, y, z;
	u32 i;

	for (i = 0; i < LORENZ_DDA_STEPS_PER_UPDATE; i++)
		LorenzDDA_Step(baseAddr);
	LorenzDDA_ReadState(baseAddr, &x, &y, &z);

	PhasePlot_AddPoint(frame, stride, &plotXY, x, y);
	PhasePlot_AddPoint(frame, stride, &plotYZ, y, z);
	PhasePlot_AddPoint(frame, stride, &plotXZ, x, z);

	DrawCurrentValues(frame, stride, x, y, z);
}
