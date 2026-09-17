#include "lorenz_plot.h"
#include "../switch_reader/switch_reader.h"
#include "xil_io.h"
#include "xparameters.h"

/*
 * lorenz_reader AXI4-Lite IP register offsets (see the IP itself):
 * reg0 = X, reg1 = Y, reg2 = Z, all latched from the same clock edge.
 */
#define LORENZ_X_OFFSET 0x0
#define LORENZ_Y_OFFSET 0x4
#define LORENZ_Z_OFFSET 0x8

/* Q7.20 fixed point <-> float, same format the IP/solver uses. */
typedef signed int lorenz_fix;
#define LORENZ_FIX2FLOAT(a) (((float)(a)) / 1048576.0)

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

void LorenzPlot_Update(u8 *frame, u32 stride)
{
#ifdef XPAR_LORENZ_READER_0_S00_AXI_BASEADDR
	lorenz_fix xRaw = (lorenz_fix) Xil_In32(XPAR_LORENZ_READER_0_S00_AXI_BASEADDR + LORENZ_X_OFFSET);
	lorenz_fix yRaw = (lorenz_fix) Xil_In32(XPAR_LORENZ_READER_0_S00_AXI_BASEADDR + LORENZ_Y_OFFSET);
	lorenz_fix zRaw = (lorenz_fix) Xil_In32(XPAR_LORENZ_READER_0_S00_AXI_BASEADDR + LORENZ_Z_OFFSET);
	float x = (float) LORENZ_FIX2FLOAT(xRaw);
	float y = (float) LORENZ_FIX2FLOAT(yRaw);
	float z = (float) LORENZ_FIX2FLOAT(zRaw);

	PhasePlot_AddPoint(frame, stride, &plotXY, x, y);
	PhasePlot_AddPoint(frame, stride, &plotYZ, y, z);
	PhasePlot_AddPoint(frame, stride, &plotXZ, x, z);

	/* Live numeric readouts, color-matched: red=X, green=Y, blue=Z */
	SwitchReader_DrawFloat(frame, stride, x, 2, 20, TEXT_Y,             TEXT_SCALE, 255, 0,   0);
	SwitchReader_DrawFloat(frame, stride, y, 2, 20, TEXT_Y + 40,        TEXT_SCALE, 0,   255, 0);
	SwitchReader_DrawFloat(frame, stride, z, 2, 20, TEXT_Y + 80,        TEXT_SCALE, 0,   0,   255);
#endif
}
