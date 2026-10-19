// mandel.c -- PS control of the mandelbrot_driver IP: view, render, timing, UART + button UI
// The IP computes and writes frame 0 by itself; the PS only writes registers and waits for done.
#include <stdio.h>
#include <stdlib.h>
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartps_hw.h"
#include "xtime_l.h"
#include "mandel.h"

// ------------------------------------------------------------------ IP registers
#define MB_BASE        XPAR_MANDELBROT_DRIVER_0_S00_AXI_BASEADDR
#define REG_CTRL       0x00     // W  bit0 start, bit1 soft reset (pulses)
#define REG_STATUS     0x04     // R  bit0 busy, bit1 done
#define REG_FB_ADDR    0x08     // RW frame address in DDR (128-byte aligned)
#define REG_CR_LEFT    0x0C     // RW Q4.23 real part at column 0
#define REG_CI_TOP     0x10     // RW Q4.23 imaginary part at row 0
#define REG_STEP       0x14     // RW Q4.23 pixel size
#define REG_MAX_ITER   0x18     // RW iteration limit
#define REG_CYCLES     0x1C     // R  render time in IP clocks
#define REG_N_ACTIVE   0x20     // RW [7:0] solvers used, [15:8] solvers built
#define REG_BUTTONS    0x24     // R  [3:0] btn, [7:4] sw
#define ST_BUSY        0x1
#define ST_DONE        0x2

#define UART_BASE      XPAR_PS7_UART_1_BASEADDR
#define IP_CLK_HZ      100000000.0              // IP runs on FCLK0
#define QF             8388608.0                // 2^23, Q4.23 scale

// ------------------------------------------------------------------ frame
#define FW             1920
#define FH             1080
#define FSTRIDE        (FW * 3)
#define FBYTES         (FSTRIDE * FH)
#define MANDEL_FRAME   0                        // demo uses frames 1..3

// ------------------------------------------------------------------ view state
#define FULL_CX        (-0.75)
#define FULL_CY        0.0
#define FULL_STEP      (2.4 / FH)               // whole set: x[-2.88,1.38] y[-1.2,1.2]
#define MAX_STEP       0.004                    // zoom-out limit (keeps c inside +/-8)

static double cx = FULL_CX, cy = FULL_CY, step = FULL_STEP;
static u32    max_iter = 1000;
static u32    n_active = 1, n_max = 1;
static int    entered = 0;                      // first call sets n_active = n_max
static u8    *frame;
static DisplayCtrl *dc;

typedef struct { s32 left, top, step; } QView;  // view as written to the IP

static inline void wr(u32 off, u32 v) { Xil_Out32(MB_BASE + off, v); }
static inline u32  rd(u32 off)        { return Xil_In32(MB_BASE + off); }

static s32 to_q(double v) { return (s32)(v * QF + (v >= 0 ? 0.5 : -0.5)); }

// Quantize the view; left/top are derived from the integer step so hardware and PS agree exactly.
static QView qview(void)
{
    QView q;
    q.step = to_q(step);
    if (q.step < 1) q.step = 1;
    q.left = to_q(cx) - (FW / 2) * q.step;
    q.top  = to_q(cy) + (FH / 2) * q.step;
    return q;
}

static double now_ms(void)
{
    XTime t;
    XTime_GetTime(&t);
    return (double)t * 1000.0 / COUNTS_PER_SECOND;
}

// ------------------------------------------------------------------ FPGA render
// Returns render time in IP clocks, or 0 on timeout (no done within 30 s).
static u32 fpga_render(void)
{
    QView q = qview();
    double t0;

    wr(REG_FB_ADDR,  (u32)frame);
    wr(REG_CR_LEFT,  (u32)q.left);
    wr(REG_CI_TOP,   (u32)q.top);
    wr(REG_STEP,     (u32)q.step);
    wr(REG_MAX_ITER, max_iter);
    wr(REG_N_ACTIVE, n_active);
    wr(REG_CTRL, 1);                                    // start pulse

    t0 = now_ms();
    while (rd(REG_STATUS) & ST_DONE)                   // old done clears once the frame starts
        if (now_ms() - t0 > 100) break;
    while (!(rd(REG_STATUS) & ST_DONE)) {
        if (now_ms() - t0 > 30000) {
            xil_printf("\r\nTIMEOUT: STATUS=0x%08x CYCLES=%u -- check M00_AXI -> HP0 / DDR address\r\n",
                       rd(REG_STATUS), rd(REG_CYCLES));
            wr(REG_CTRL, 2);                            // soft reset the engine
            return 0;
        }
    }
    return rd(REG_CYCLES);
}

// ------------------------------------------------------------------ PS (ARM) reference render
// Same palette and memory format as the RTL; used for the FPGA vs PS timing table.
static u8 palette(u32 c, u32 m)
{
    if (c >= m)        return 0x00;                     // inside: black
    if (c >= (m >> 1)) return 0x64;                     // 011_001_00
    if (c >= (m >> 2)) return 0x64;
    if (c >= (m >> 3)) return 0xA9;                     // 101_010_01
    if (c >= (m >> 4)) return 0x65;                     // 011_001_01
    if (c >= (m >> 5)) return 0x25;                     // 001_001_01
    if (c >= (m >> 6)) return 0x6A;                     // 011_010_10
    return 0x92;                                        // 010_100_10
}

static void put_rgb332(u8 *p, u8 c)
{
    u8 r = (c >> 5) & 7, g = (c >> 2) & 7, b = c & 3;
    p[0] = (r << 5) | (r << 2) | (r >> 1);              // R  (bit replication, as px24 in RTL)
    p[1] = (b << 6) | (b << 4) | (b << 2) | b;          // B
    p[2] = (g << 5) | (g << 2) | (g >> 1);              // G
}

static double ps_render(void)
{
    QView q = qview();
    u32 mi = max_iter ? max_iter : 1;
    u32 x, y, n;
    double t0 = now_ms();

    for (y = 0; y < FH; y++) {
        double ci = (double)(q.top - (s32)y * q.step) / QF;
        u8 *p = frame + y * FSTRIDE;
        for (x = 0; x < FW; x++, p += 3) {
            double cr = (double)(q.left + (s32)x * q.step) / QF;
            double zr = 0, zi = 0, zr2 = 0, zi2 = 0;
            n = 0;
            do {                                        // lab's iteration, squares saved
                zi  = 2.0 * zr * zi + ci;
                zr  = zr2 - zi2 + cr;
                zr2 = zr * zr;
                zi2 = zi * zi;
                n++;
            } while (zr2 + zi2 <= 4.0 && n < mi);
            put_rgb332(p, palette(n, mi));
        }
    }
    Xil_DCacheFlushRange((INTPTR)frame, FBYTES);        // make the pixels visible to the VDMA
    return now_ms() - t0;
}

// ------------------------------------------------------------------ view helpers
static void clamp_view(void)
{
    if (step > MAX_STEP)    step = MAX_STEP;
    if (step < 1.0 / QF)    step = 1.0 / QF;
    if (cx < -3.0) cx = -3.0;
    if (cx >  3.0) cx =  3.0;
    if (cy < -3.0) cy = -3.0;
    if (cy >  3.0) cy =  3.0;
}

// Fit a rectangle (lab report regions) onto the 16:9 screen, centred, square pixels.
static void set_region(double x0, double x1, double y0, double y1)
{
    double sx = (x1 - x0) / FW, sy = (y1 - y0) / FH;
    cx = (x0 + x1) / 2;
    cy = (y0 + y1) / 2;
    step = (sx > sy) ? sx : sy;
    clamp_view();
}

static void print_view(void)
{
    QView q = qview();
    printf("  x [%.10f, %.10f]\r\n", q.left / QF, (q.left + (FW - 1) * q.step) / QF);
    printf("  y [%.10f, %.10f]\r\n", (q.top - (FH - 1) * q.step) / QF, q.top / QF);
    printf("  centre (%.10f, %.10f)  zoom x%.0f  step %d LSB\r\n",
           cx, cy, FULL_STEP / (q.step / QF), (int)q.step);
    printf("  max_iter %u   solvers %u of %u\r\n", (unsigned)max_iter, (unsigned)n_active, (unsigned)n_max);
}

// ------------------------------------------------------------------ input
// Rising edge of BTN0..3 is returned as 'f', '+', '-', 'r'; otherwise the UART character.
static char wait_key(void)
{
    static u32 prev = 0;
    static const char map[4] = { 'f', '+', '-', 'r' };
    double t_poll = now_ms();
    int i;

    while (1) {
        if (XUartPs_IsReceiveData(UART_BASE))
            return XUartPs_ReadReg(UART_BASE, XUARTPS_FIFO_OFFSET);
        if (now_ms() - t_poll >= 20) {                  // 20 ms poll = simple debounce
            u32 b = rd(REG_BUTTONS) & 0xF;
            u32 rise = b & ~prev;
            t_poll = now_ms();
            prev = b;
            for (i = 0; i < 4; i++)
                if (rise & (1u << i)) return map[i];
        }
    }
}

// Read a line from the UART with echo and backspace.
static void read_line(char *buf, int len)
{
    int n = 0;
    char c;
    while (1) {
        while (!XUartPs_IsReceiveData(UART_BASE)) { }
        c = XUartPs_ReadReg(UART_BASE, XUARTPS_FIFO_OFFSET);
        if (c == '\r' || c == '\n') break;
        if ((c == 0x08 || c == 0x7F) && n > 0) { n--; xil_printf("\b \b"); continue; }
        if (n < len - 1 && c >= ' ') { buf[n++] = c; xil_printf("%c", c); }
    }
    buf[n] = 0;
    xil_printf("\r\n");
}

static double ask_num(const char *prompt)
{
    char buf[40];
    xil_printf("%s", prompt);
    read_line(buf, sizeof(buf));
    return strtod(buf, NULL);
}

static void print_menu(void)
{
    xil_printf("\r\n------------------------- Mandelbrot (FPGA) -------------------------\r\n");
    xil_printf(" f  full set (BTN0)        +/- zoom x2 about centre (BTN1/BTN2)\r\n");
    xil_printf(" w a s d  pan 1/4 screen   z  zoom x2 about a pixel (x y)\r\n");
    xil_printf(" g  go to centre + zoom    1 2 3  report regions\r\n");
    xil_printf(" i  set max_iter           n  set solvers used\r\n");
    xil_printf(" r  re-render (BTN3)       b  time vs solvers (1..%u)\r\n", (unsigned)n_max);
    xil_printf(" p  render on PS (ARM)     x  IP register dump\r\n");
    xil_printf("Select: ");
}

static void render_and_report(void)
{
    u32 cyc = fpga_render();
    xil_printf("\r\n");
    print_view();
    if (cyc) printf("  FPGA render: %.3f ms (%u clocks)  STATUS 0x%x\r\n",
                    cyc * 1000.0 / IP_CLK_HZ, (unsigned)cyc, (unsigned)rd(REG_STATUS));
}

static void dump_regs(void)
{
    xil_printf("\r\nmandelbrot_driver @ 0x%08x\r\n", MB_BASE);
    xil_printf("  STATUS   0x%08x   CYCLES 0x%08x (%u)\r\n", rd(REG_STATUS), rd(REG_CYCLES), rd(REG_CYCLES));
    xil_printf("  FB_ADDR  0x%08x   frame 0 at 0x%08x\r\n", rd(REG_FB_ADDR), (u32)frame);
    xil_printf("  CR_LEFT  0x%08x   CI_TOP 0x%08x   STEP 0x%08x\r\n", rd(REG_CR_LEFT), rd(REG_CI_TOP), rd(REG_STEP));
    xil_printf("  MAX_ITER %u   N_ACTIVE 0x%04x   BUTTONS 0x%02x\r\n", rd(REG_MAX_ITER), rd(REG_N_ACTIVE), rd(REG_BUTTONS));
}

// ------------------------------------------------------------------ menu loop
void MandelMenu(DisplayCtrl *disp, u8 *frames[DISPLAY_NUM_FRAMES])
{
    char c;
    u32 k, keep;

    dc    = disp;
    frame = frames[MANDEL_FRAME];
    if ((u32)frame & 127) {
        xil_printf("\r\nframe %d at 0x%08x is not 128-byte aligned\r\n", MANDEL_FRAME, (u32)frame);
        return;
    }

    // IP check: if this hangs, the PS cannot reach the IP (bitstream/address mismatch).
    xil_printf("\r\nchecking mandelbrot_driver at 0x%08x ... ", MB_BASE);
    wr(REG_FB_ADDR, (u32)frame);
    n_max = (rd(REG_N_ACTIVE) >> 8) & 0xFF;             // solvers built into the bitstream
    if (rd(REG_FB_ADDR) != (u32)frame || n_max == 0)
        xil_printf("NOT RESPONDING (FB_ADDR read 0x%08x, NSOLV %u)\r\n", rd(REG_FB_ADDR), n_max);
    else
        xil_printf("ok, %u solvers\r\n", n_max);
    if (n_max == 0) n_max = 1;
    if (!entered || n_active > n_max) n_active = n_max; // default: all solvers
    entered = 1;

    if (dc->vMode.width != FW || dc->vMode.height != FH) {
        DisplayStop(dc);
        DisplaySetMode(dc, &VMODE_1920x1080);
        DisplayStart(dc);
    }
    DisplayChangeFrame(dc, MANDEL_FRAME);
    Xil_DCacheInvalidateRange((INTPTR)frame, FBYTES);   // no dirty CPU lines may overwrite PL pixels

    render_and_report();
    while (1) {
        print_menu();
        c = wait_key();
        xil_printf("%c\r\n", c);
        switch (c) {
        case 'f': cx = FULL_CX; cy = FULL_CY; step = FULL_STEP; break;
        case '+': case '=': step /= 2; break;
        case '-': step *= 2; break;
        case 'w': cy += (FH / 4) * step; break;
        case 's': cy -= (FH / 4) * step; break;
        case 'a': cx -= (FW / 4) * step; break;
        case 'd': cx += (FW / 4) * step; break;
        case 'z': {
            double px = ask_num("pixel x (0..1919): ");
            double py = ask_num("pixel y (0..1079): ");
            cx += (px - FW / 2) * step;
            cy -= (py - FH / 2) * step;
            step /= 2;
            break;
        }
        case 'g': {
            double z;
            cx = ask_num("centre x: ");
            cy = ask_num("centre y: ");
            z  = ask_num("zoom (1 = full set): ");
            step = FULL_STEP / (z > 0 ? z : 1);
            break;
        }
        case '1': set_region(-2.0,   1.0,   -1.0,  1.0);  break;
        case '2': set_region(-0.758, -0.75,  0.05, 0.06); break;
        case '3': set_region(-1.45,  -1.3,  -0.07, 0.07); break;
        case 'i':
            k = (u32)ask_num("max_iter (1..65535): ");
            max_iter = (k < 1) ? 1 : (k > 65535) ? 65535 : k;
            break;
        case 'n':
            k = (u32)ask_num("solvers to use: ");
            if (k > n_max)
                xil_printf("only %u solvers are built into the bitstream (NSOLV); using %u\r\n",
                           (unsigned)n_max, (unsigned)n_max);
            n_active = (k < 1) ? 1 : (k > n_max) ? n_max : k;
            break;
        case 'r': break;
        case 'b':
            keep = n_active;
            xil_printf("\r\n solvers   FPGA ms\r\n");
            for (k = 1; k <= n_max; k++) {
                u32 cyc;
                n_active = k;
                cyc = fpga_render();
                printf("   %2u    %10.3f\r\n", (unsigned)k, cyc * 1000.0 / IP_CLK_HZ);
            }
            n_active = keep;
            continue;                                   // last frame already on screen
        case 'p':
            xil_printf("\r\nrendering on the ARM, this takes a while...\r\n");
            print_view();
            printf("  PS render: %.3f ms\r\n", ps_render());
            continue;
        case 'x':
            dump_regs();
            continue;
        default:
            xil_printf("invalid key\r\n");
            continue;
        }
        clamp_view();
        render_and_report();
    }
}
