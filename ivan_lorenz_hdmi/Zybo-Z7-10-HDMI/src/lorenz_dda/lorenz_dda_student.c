#include "xil_io.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

// ==============================================================================
// 1. MACROS AND MEMORY MAP
// ==============================================================================

/* TODO: Define your AXI4-Lite PIO offsets here (match your Vivado Block Design) */
#define LORENZ_DDA_CTRL_OFFSET   0x00 /* R/W  bit0=enable(pulse), bit1=load(pulse) */
#define LORENZ_DDA_STATUS_OFFSET 0x04 /* R    bit0=done (1 AXI-clock pulse only) */
#define LORENZ_DDA_XINIT_OFFSET  0x08 
// ... Define offsets for YINIT, ZINIT, SIGMA, RHO, BETA, DT, XNEXT, YNEXT, ZNEXT

#define LORENZ_DDA_CTRL_ENABLE_BIT 0x1u
#define LORENZ_DDA_CTRL_LOAD_BIT   0x2u

/* TODO: Define Q6.20 fixed point <-> float macros */
typedef signed int lorenz_fix;
// Hint: Multiply/divide by 2^20 (1048576.0f)
#define LORENZ_FLOAT2FIX(f) /* YOUR CODE HERE */
#define LORENZ_FIX2FLOAT(a) /* YOUR CODE HERE */


// ==============================================================================
// 2. GRAPHICS & FONT PRIMITIVES (Provided)
// ==============================================================================

/* 5x7 bitmap font: digits, '-', '.', ':', and uppercase letters needed for panel labels. */
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
    if (c >= '0' && c <= '9') return font5x7_digits[c - '0'];
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

static void ClearRect(u8 *frame, u32 stride, u32 xOrigin, u32 yOrigin, u32 width, u32 height)
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
    u32 row, col, sx, sy, x, y, pixelAddr;
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

static void LorenzDDAPlot_DrawFloat(u8 *frame, u32 stride, float value, int decimals,
                                     u32 xOrigin, u32 yOrigin, u32 scale,
                                     u8 red, u8 blue, u8 green)
{
    char text[16];
    u32 i, len, glyphAdvance = (5 + 1) * scale;
    const u32 maxChars = 12; 

    ClearRect(frame, stride, xOrigin, yOrigin, maxChars * glyphAdvance, 7 * scale);
    snprintf(text, sizeof(text), "%.*f", decimals, value);
    len = strlen(text);

    for (i = 0; i < len; i++)
    {
        const u8 *glyph = ResolveGlyph(text[i]);
        if (glyph != NULL)
            DrawGlyph(frame, stride, glyph, xOrigin + i * glyphAdvance, yOrigin,
                      scale, red, blue, green);
    }
}

typedef struct {
    u32 xOrigin; u32 yOrigin;
    u32 width; u32 height;
    float minH, maxH; float minV, maxV;
    u8 red, blue, green;
    int hasLast, lastPx, lastPy;
} PhasePlot;

static PhasePlot plotXY, plotYZ, plotXZ;

static void PhasePlot_Init(PhasePlot *plot, u32 xOrigin, u32 yOrigin, u32 width, u32 height,
                            float minH, float maxH, float minV, float maxV,
                            u8 red, u8 blue, u8 green)
{
    plot->xOrigin = xOrigin; plot->yOrigin = yOrigin;
    plot->width = width; plot->height = height;
    plot->minH = minH; plot->maxH = maxH;
    plot->minV = minV; plot->maxV = maxV;
    plot->red = red; plot->blue = blue; plot->green = green;
    plot->hasLast = 0;
}

static void PhasePlot_Clear(u8 *frame, u32 stride, PhasePlot *plot)
{
    ClearRect(frame, stride, plot->xOrigin, plot->yOrigin, plot->width, plot->height);
    plot->hasLast = 0;
}

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

static void PhasePlot_DrawLine(u8 *frame, u32 stride, int x0, int y0, int x1, int y1,
                                u8 red, u8 blue, u8 green)
{
    int dx = (x1 > x0) ? (x1 - x0) : (x0 - x1);
    int dy = (y1 > y0) ? (y0 - y1) : (y1 - y0);
    int sx = (x0 < x1) ? 1 : -1;
    int sy = (y0 < y1) ? 1 : -1;
    int err = dx + dy, e2;
    u32 addr;

    for (;;)
    {
        addr = ((u32) x0 * 3) + ((u32) y0 * stride);
        frame[addr]     = red;
        frame[addr + 1] = blue;
        frame[addr + 2] = green;

        if (x0 == x1 && y0 == y1) break;
        e2 = 2 * err;
        if (e2 >= dy) { err += dy; x0 += sx; }
        if (e2 <= dx) { err += dx; y0 += sy; }
    }
}

static void PhasePlot_AddPoint(u8 *frame, u32 stride, PhasePlot *plot, float hVal, float vVal)
{
    float th, tv; int px, py, dx, dy;

    th = (hVal - plot->minH) / (plot->maxH - plot->minH);
    if (th < 0.0f) th = 0.0f; if (th > 1.0f) th = 1.0f;

    tv = (vVal - plot->minV) / (plot->maxV - plot->minV);
    if (tv < 0.0f) tv = 0.0f; if (tv > 1.0f) tv = 1.0f;

    px = (int) (th * (plot->width - 1));
    py = (int) (plot->height - 1) - (int) (tv * (plot->height - 1));

    if (plot->hasLast)
    {
        dx = (px > plot->lastPx) ? (px - plot->lastPx) : (plot->lastPx - px);
        dy = (py > plot->lastPy) ? (py - plot->lastPy) : (plot->lastPy - py);

        if (dx > (int) (plot->width / 2) || dy > (int) (plot->height / 2))
            PhasePlot_DrawDot(frame, stride, plot, px, py);
        else
            PhasePlot_DrawLine(frame, stride,
                                (int) plot->xOrigin + plot->lastPx, (int) plot->yOrigin + plot->lastPy,
                                (int) plot->xOrigin + px, (int) plot->yOrigin + py,
                                plot->red, plot->blue, plot->green);
    }
    else
    {
        PhasePlot_DrawDot(frame, stride, plot, px, py);
    }

    plot->lastPx = px; plot->lastPy = py; plot->hasLast = 1;
}

#define SCREEN_W 1920
#define SCREEN_H 1080
#define QUAD_W   (SCREEN_W / 2)
#define QUAD_H   (SCREEN_H / 2)
#define QUAD_MARGIN 40

#define PLOT_W (QUAD_W - 2 * QUAD_MARGIN)
#define PLOT_H (QUAD_H - 2 * QUAD_MARGIN)

#define PANEL_X (QUAD_W + QUAD_MARGIN)
#define PANEL_Y (QUAD_H + QUAD_MARGIN)
#define PANEL_W PLOT_W
#define PANEL_H PLOT_H
#define PANEL_TEXT_SCALE 4
#define PANEL_LINE_PITCH 42
#define PANEL_LINE_Y(i)  (PANEL_Y + 10 + (i) * PANEL_LINE_PITCH)
#define PANEL_LABEL_CHARS 2

#define PANEL_MID_X    (PANEL_X + PANEL_W / 2)
#define PANEL_LEFT_X   (PANEL_X + 10)
#define PANEL_RIGHT_X  (PANEL_MID_X + 20)
#define PANEL_LEFT_NUM_X  (PANEL_LEFT_X  + PANEL_LABEL_CHARS * (5 + 1) * PANEL_TEXT_SCALE)
#define PANEL_RIGHT_NUM_X (PANEL_RIGHT_X + PANEL_LABEL_CHARS * (5 + 1) * PANEL_TEXT_SCALE)

#define DIVIDER_GRAY 60

static void DrawPanelLabels(u8 *frame, u32 stride)
{
    DrawLabel(frame, stride, "X:", PANEL_LEFT_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);
    DrawLabel(frame, stride, "Y:", PANEL_LEFT_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255);
    DrawLabel(frame, stride, "Z:", PANEL_LEFT_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);
    DrawLabel(frame, stride, "S:", PANEL_LEFT_X, PANEL_LINE_Y(3), PANEL_TEXT_SCALE, 255, 0,   255);
    DrawLabel(frame, stride, "R:", PANEL_LEFT_X, PANEL_LINE_Y(4), PANEL_TEXT_SCALE, 0,   255, 255);
    DrawLabel(frame, stride, "B:", PANEL_LEFT_X, PANEL_LINE_Y(5), PANEL_TEXT_SCALE, 255, 255, 0);
    DrawLabel(frame, stride, "D:", PANEL_LEFT_X, PANEL_LINE_Y(6), PANEL_TEXT_SCALE, 255, 255, 255);

    DrawLabel(frame, stride, "X:", PANEL_RIGHT_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);
    DrawLabel(frame, stride, "Y:", PANEL_RIGHT_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255);
    DrawLabel(frame, stride, "Z:", PANEL_RIGHT_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);
}

void LorenzDDAPlot_Init(void)
{
    PhasePlot_Init(&plotXY, QUAD_MARGIN, QUAD_MARGIN, PLOT_W, PLOT_H,
                   -20.0f, 20.0f, -25.0f, 25.0f, 255, 0, 0);
    PhasePlot_Init(&plotYZ, QUAD_W + QUAD_MARGIN, QUAD_MARGIN, PLOT_W, PLOT_H,
                   -25.0f, 25.0f, 0.0f, 50.0f, 0, 0, 255);
    PhasePlot_Init(&plotXZ, QUAD_MARGIN, QUAD_H + QUAD_MARGIN, PLOT_W, PLOT_H,
                   -20.0f, 20.0f, 0.0f, 50.0f, 0, 255, 0);
}

void LorenzDDAPlot_ClearAll(u8 *frame, u32 stride)
{
    PhasePlot_Clear(frame, stride, &plotXY);
    PhasePlot_Clear(frame, stride, &plotYZ);
    PhasePlot_Clear(frame, stride, &plotXZ);
    ClearRect(frame, stride, PANEL_X, PANEL_Y, PANEL_W, PANEL_H);

    PhasePlot_DrawLine(frame, stride, SCREEN_W / 2, 0, SCREEN_W / 2, SCREEN_H - 1, DIVIDER_GRAY, DIVIDER_GRAY, DIVIDER_GRAY);
    PhasePlot_DrawLine(frame, stride, 0, SCREEN_H / 2, SCREEN_W - 1, SCREEN_H / 2, DIVIDER_GRAY, DIVIDER_GRAY, DIVIDER_GRAY);
    PhasePlot_DrawLine(frame, stride, PANEL_MID_X, PANEL_Y, PANEL_MID_X, PANEL_Y + PANEL_H - 1, DIVIDER_GRAY, DIVIDER_GRAY, DIVIDER_GRAY);

    DrawPanelLabels(frame, stride);
}

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

static void DrawCurrentValues(u8 *frame, u32 stride, float x, float y, float z)
{
    LorenzDDAPlot_DrawFloat(frame, stride, x, 2, PANEL_RIGHT_NUM_X, PANEL_LINE_Y(0), PANEL_TEXT_SCALE, 255, 0,   0);
    LorenzDDAPlot_DrawFloat(frame, stride, y, 2, PANEL_RIGHT_NUM_X, PANEL_LINE_Y(1), PANEL_TEXT_SCALE, 0,   0,   255);
    LorenzDDAPlot_DrawFloat(frame, stride, z, 2, PANEL_RIGHT_NUM_X, PANEL_LINE_Y(2), PANEL_TEXT_SCALE, 0,   255, 0);
}

// ==============================================================================
// 3. HARDWARE ABSTRACTION LAYER (HAL)
// ==============================================================================

void LorenzDDA_SetParams(u32 baseAddr, float x0, float y0, float z0,
                          float sigma, float rho, float beta, u32 dtShift)
{
    /* TODO: Convert floats to Q6.20 and write to the corresponding AXI offsets using Xil_Out32 */
    
}

void LorenzDDA_Load(u32 baseAddr)
{
    /* TODO: Pulse the load bit on your control register */
    
}

void LorenzDDA_Step(u32 baseAddr)
{
    /* TODO: Pulse the enable/step bit on your control register */
    
}

void LorenzDDA_ReadState(u32 baseAddr, float *x, float *y, float *z)
{
    /* TODO: Read the 32-bit state from AXI using Xil_In32, convert from Q6.20 to float, and store in pointers */
    
}

// ==============================================================================
// 4. MAIN APPLICATION & COMMAND UI
// ==============================================================================

/* Hint: Standard C getchar() will block or may not work in bare-metal.
 * Use this Xilinx BSP function to read a character from the UART console. */
extern char inbyte(void);

int main() {
    /* Base address of your custom IP in the Vivado address editor */
    u32 lorenz_base = 0x43C00000; // Update with your actual base address
    
    // Assume frame buffer pointer and stride are set up here via VDMA/DisplayPort drivers
    u8 *frame = (u8*)0x10000000; 
    u32 stride = 1920 * 3;

    // --- State Variables ---
    float x_curr, y_curr, z_curr;
    float sigma = 10.0, rho = 28.0, beta = 2.666;
    float x0 = -1.0, y0 = 0.1, z0 = 25.0;
    u32 dtShift = 8; // (1/256)
    
    bool paused = false;
    u32 steps_per_frame = 16;
    char command;

    /* Initialize the graphics plots */
    LorenzDDAPlot_Init();
    LorenzDDAPlot_ClearAll(frame, stride);
    
    /* TODO: Send initial parameters to hardware and load them */
    
    /* TODO: Display initial parameters on the screen using LorenzDDAPlot_ShowInitValues */

    printf("\n=== LORENZ DDA AXI CONTROL ===\n");
    printf("[p] Pause/Resume  [c] Clear Screen  [r] Reset/New ICs\n");
    printf("[+] Speed Up      [-] Slow Down     [s] Change Parameters\n");

    // Main UI Loop
    while (1) {
        // 1. Non-blocking console check (pseudo-code provided, adapt to your UART setup)
        /* 
         * TODO: Implement the command interpreter here.
         * Requirements from Week 3 Syllabus:
         * - 'p': pause/resume animation
         * - 'c': clear the screen
         * - '+': speed up (increase steps_per_frame)
         * - '-': slow down (decrease steps_per_frame)
         * - 's': set new parameters (sigma, rho, beta) dynamically
         * - 'r': reset system with new initial conditions
         */

        // 2. Hardware Compute & Plotting
        if (!paused) {
            /* TODO: Step the hardware 'steps_per_frame' times */
            
            /* TODO: Read the state back */
            
            /* TODO: Plot the points on the screen and update the UI numbers */
            // PhasePlot_AddPoint(frame, stride, &plotXY, x_curr, y_curr);
            // DrawCurrentValues(frame, stride, x_curr, y_curr, z_curr);
        }
    }
    
    return 0;
}