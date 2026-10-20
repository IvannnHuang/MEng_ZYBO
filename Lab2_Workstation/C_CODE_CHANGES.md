# Lab 2 C code changes: USB mouse panning and zoom

For: porting the workstation's C changes into `Lab2/` (your laptop setup).
Compared against: the last commit's `Lab2/Mandelbrot_hdmi/Zybo-Z7-10-HDMI/src/`.
Status: builds clean (`-Wall`, no warnings). The mouse driver **has not been confirmed on the board yet**: the mouse is detected, and the last fix (for the first descriptor read failing) is untested.

## What it does
- Plug a USB mouse into the Zybo Z7's USB **host** port. The board's USB host jumper must be set.
- **Move the mouse:** pans the view.
- **Left click:** zoom in 2× (same as `+`).
- **Right click:** zoom out 2× (same as `-`).
- **`m` key:** re-detects the mouse if it was plugged in late.
- WASD, buttons, and every other menu key work exactly as before. With no mouse, nothing changes.

## Files: only 3 touched, everything else in `src/` is identical

| Change | Copy **from** (this repo) | Copy **to** (your project) |
|---|---|---|
| **New** | [`Lab2_Workstation/Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.c`](Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.c) | `Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.c` |
| **New** | [`Lab2_Workstation/Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.h`](Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.h) | `Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.h` |
| **Changed** | [`Lab2_Workstation/Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/mandel/mandel.c`](Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/mandel/mandel.c) | `Zybo-Z7-10-HDMI/src/mandel/mandel.c` |

The same three files are also at `Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-10-HDMI/src/...`. They are identical; use either.

"Your project" means whichever `src/` folder your Vitis app actually builds from. Your `.cproject` include path points at `D:/Zybo-Z7-SW/src/Zybo-Z7-10-HDMI/src`, so it's probably that one, not the repo's `Lab2/.../src`.

## Steps
1. Make a new folder `src/usbmouse/` and copy `usbmouse.c` and `usbmouse.h` into it.
2. Either replace `src/mandel/mandel.c` with the workstation version, or apply the diff below by hand if you've changed `mandel.c` since the last commit.
3. In Vitis, right-click the app project → **Refresh**, then **Build**. The new folder is picked up automatically; no project settings change.
4. Flash, plug in the mouse, enter the Mandelbrot menu, and watch the `usb:` lines on the UART.

## Things that can bite
- **Include path:** `mandel.c` uses `#include "../usbmouse/usbmouse.h"` (relative to `src/mandel/`), which works whatever your include paths are. Keep `usbmouse/` next to `mandel/`.
- **BSP:** the driver uses only `xil_io`, `xil_mmu`, `xil_printf`, `xgpiops`, `xtime_l`. It does **not** use Xilinx's `xusbps` driver, which is device-mode only. `xgpiops` is already in our BSP.
- **No Vivado change:** USB0 is a PS peripheral, already enabled in `design_1.bd` by the board preset (MIO 28..39, PHY reset on MIO 46).
- **Memory:** the driver reserves 1 MB of `.bss` (one 1 MB-aligned section, marked uncached at runtime) for USB controller memory. It linked at `0x00300000` here.
- **Board jumper:** without the USB host jumper the UART shows `usb: nothing connected`.

## The `mandel.c` diff, exactly
Everything here is additive except the WASD lines. Those now call `pan_px()`, which does the same math as before.

```diff
--- Lab2/Mandelbrot_hdmi/Zybo-Z7-10-HDMI/src/mandel/mandel.c (last commit)
+++ Lab2_Workstation/Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/mandel/mandel.c
@@ -9,6 +9,7 @@
 #include "xuartps_hw.h"
 #include "xtime_l.h"
 #include "mandel.h"
+#include "../usbmouse/usbmouse.h"
 
 // ------------------------------------------------------------------ IP registers
 #define MB_BASE        XPAR_MANDELBROT_DRIVER_0_S00_AXI_BASEADDR
@@ -41,6 +42,7 @@
 #define FULL_CY        0.0
 #define FULL_STEP      (2.4 / FH)               // whole set: x[-2.88,1.38] y[-1.2,1.2]
 #define MAX_STEP       0.004                    // zoom-out limit (keeps c inside +/-8)
+#define MOUSE_GAIN     2                        // screen pixels panned per mouse count
 
 static double cx = FULL_CX, cy = FULL_CY, step = FULL_STEP;
 static u32    max_iter = 1000;
@@ -48,6 +50,7 @@
 static int    entered = 0;                      // first call sets n_active = n_max
 static u8    *frame;
 static DisplayCtrl *dc;
+static int    mouse_ok = 0;                      // USB mouse enumerated OK; WASD works regardless
 
 typedef struct { s32 left, top, step; } QView;  // view as written to the IP
 
@@ -164,6 +167,13 @@
     if (cy >  3.0) cy =  3.0;
 }
 
+// Pan by a number of screen pixels at the current zoom; shared by WASD and mouse input.
+static void pan_px(double dx, double dy)
+{
+    cx += dx * step;
+    cy += dy * step;
+}
+
 // Fit a rectangle (lab report regions) onto the 16:9 screen, centred, square pixels.
 static void set_region(double x0, double x1, double y0, double y1)
 {
@@ -186,9 +196,12 @@
 
 // ------------------------------------------------------------------ input
 // Rising edge of BTN0..3 is returned as 'f', '+', '-', 'r'; otherwise the UART character.
+// Mouse: any movement pans (view moves the way the mouse moves) and returns 0;
+// a left click returns '+' (zoom in), a right click returns '-' (zoom out).
 static char wait_key(void)
 {
     static u32 prev = 0;
+    static u8  mouse_prev = 0;
     static const char map[4] = { 'f', '+', '-', 'r' };
     double t_poll = now_ms();
     int i;
@@ -196,6 +209,18 @@
     while (1) {
         if (XUartPs_IsReceiveData(UART_BASE))
             return XUartPs_ReadReg(UART_BASE, XUARTPS_FIFO_OFFSET);
+        if (mouse_ok) {
+            s8 mdx, mdy; u8 mbtn;
+            if (UsbMousePoll(&mdx, &mdy, &mbtn)) {
+                u8 click = mbtn & ~mouse_prev;          // buttons that just went down
+                mouse_prev = mbtn;
+                // Mouse +dy is down the screen; cy grows upward.
+                if (mdx || mdy) pan_px(mdx * MOUSE_GAIN, -mdy * MOUSE_GAIN);
+                if (click & 1) return '+';
+                if (click & 2) return '-';
+                if (mdx || mdy) return 0;               // view already moved; caller just re-renders
+            }
+        }
         if (now_ms() - t_poll >= 20) {                  // 20 ms poll = simple debounce
             u32 b = rd(REG_BUTTONS) & 0xF;
             u32 rise = b & ~prev;
@@ -240,6 +265,8 @@
     xil_printf(" i  set max_iter           n  set solvers used\r\n");
     xil_printf(" r  re-render (BTN3)       b  time vs solvers (1..%u)\r\n", (unsigned)n_max);
     xil_printf(" p  render on PS (ARM)     x  IP register dump\r\n");
+    xil_printf(" mouse: move to pan, left click zoom in, right click zoom out   m  %s\r\n",
+               mouse_ok ? "re-detect USB mouse" : "detect USB mouse (none yet)");
     xil_printf("Select: ");
 }
 
@@ -264,7 +291,7 @@
 // ------------------------------------------------------------------ menu loop
 void MandelMenu(DisplayCtrl *disp, u8 *frames[DISPLAY_NUM_FRAMES])
 {
-    char c;
+    char c = '\r';                                      // non-zero so the menu prints on entry
     u32 k, keep;
 
     dc    = disp;
@@ -294,19 +321,30 @@
     DisplayChangeFrame(dc, MANDEL_FRAME);
     Xil_DCacheInvalidateRange((INTPTR)frame, FBYTES);   // no dirty CPU lines may overwrite PL pixels
 
+    xil_printf("\r\n");
+    mouse_ok = (UsbMouseInit() == 0);
+    if (!mouse_ok) xil_printf("No USB mouse -- WASD panning only (press m to retry).\r\n");
+
     render_and_report();
     while (1) {
-        print_menu();
+        if (c) print_menu();                            // skip the menu while the mouse is panning
         c = wait_key();
-        xil_printf("%c\r\n", c);
+        if (c) xil_printf("%c\r\n", c);
         switch (c) {
+        case 0:                                         // mouse movement already panned the view
+            clamp_view();
+            fpga_render();
+            continue;
+        case 'm':
+            mouse_ok = (UsbMouseInit() == 0);
+            continue;
         case 'f': cx = FULL_CX; cy = FULL_CY; step = FULL_STEP; break;
         case '+': case '=': step /= 2; break;
         case '-': step *= 2; break;
-        case 'w': cy += (FH / 4) * step; break;
-        case 's': cy -= (FH / 4) * step; break;
-        case 'a': cx -= (FW / 4) * step; break;
-        case 'd': cx += (FW / 4) * step; break;
+        case 'w': pan_px(0, FH / 4); break;
+        case 's': pan_px(0, -(FH / 4)); break;
+        case 'a': pan_px(-(FW / 4), 0); break;
+        case 'd': pan_px(FW / 4, 0); break;
         case 'z': {
             double px = ask_num("pixel x (0..1919): ");
             double py = ask_num("pixel y (0..1079): ");
```

## Driver API (`usbmouse.h`)
```c
int UsbMouseInit(void);                         // 0 = mouse ready, -1 = failed (reason printed on UART)
int UsbMousePoll(s8 *dx, s8 *dy, u8 *buttons);  // non-blocking; 1 = new report
                                                // dx/dy: raw counts, +dy = down; buttons: bit0 L, bit1 R, bit2 M
```

## Tuning
- Pan speed: `MOUSE_GAIN` in `mandel.c`.
- Pan direction backwards? Flip the signs in `pan_px(mdx * MOUSE_GAIN, -mdy * MOUSE_GAIN)`.

## If the mouse doesn't come up
The UART prints which step failed. For a failed request it also prints `qTD tok=0x...`; read its last byte:

| Ends in | Meaning |
|---|---|
| `80` | Request never finished |
| `48` / `08` | Mouse didn't answer (routing problem) |
| `50` / `60` | Babble / buffer error |
| `USBSTS` bit 4 set | Controller couldn't reach memory |

More detail: [`session-log-2026-10-19.md`](session-log-2026-10-19.md), section "USB mouse panning".
