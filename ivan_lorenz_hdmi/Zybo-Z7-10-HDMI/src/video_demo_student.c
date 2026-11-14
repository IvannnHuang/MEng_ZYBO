/************************************************************************/
/*                                                                      */
/*  video_demo.c    --  Lorenz DDA HDMI plotter (Student Template)      */
/*                                                                      */
/************************************************************************/

#include "video_demo.h"
#include "display_ctrl/display_ctrl.h"
#include "lorenz_dda/lorenz_dda_student.h" /* Update to your actual header name */
#include <stdio.h>
#include <stdlib.h>
#include "xuartps.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "timer_ps/timer_ps.h"
#include "xparameters.h"

#define DYNCLK_BASEADDR         XPAR_AXI_DYNCLK_0_S_AXI_LITE_BASEADDR
#define VDMA_ID                 XPAR_AXIVDMA_0_DEVICE_ID
#define HDMI_OUT_VTC_ID         XPAR_V_TC_OUT_DEVICE_ID
#define SCU_TIMER_ID            XPAR_SCUTIMER_DEVICE_ID
#define UART_BASEADDR           XPAR_PS7_UART_1_BASEADDR

/* ============================================================== */
/* ===== EDIT HERE IF YOUR LORENZ DDA IP HAS A DIFFERENT NAME ==== */
/* ============================================================== */
/* Check your xparameters.h file. If your IP instance is named differently, update the macro below. */
#ifdef XPAR_LORENZ_DDA_DRIVER_0_BASEADDR                 /* <-- EDIT: replace with your macro */
#define HAVE_LORENZ_DDA
#define LORENZ_DDA_BASEADDR XPAR_LORENZ_DDA_DRIVER_0_BASEADDR /* <-- EDIT: replace with your macro */
#endif
/* ============================================================== */

/* Display driver structs */
DisplayCtrl dispCtrl;
XAxiVdma vdma;

/* Framebuffers for video data */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__((aligned(0x20)));
u8 *pFrames[DISPLAY_NUM_FRAMES];

#ifdef HAVE_LORENZ_DDA
/* Helper: Blocking UART line read (echoes chars, handles backspace, ends on CR/LF) */
static void DemoReadLine(char *buf, u32 bufSize)
{
    u32 idx = 0;
    char c;
    for (;;) {
        while (!XUartPs_IsReceiveData(UART_BASEADDR)) {}
        c = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);

        if (c == '\r' || c == '\n') {
            xil_printf("\n\r");
            break;
        } else if (c == 0x08 || c == 0x7F) {
            if (idx > 0) { idx--; xil_printf("\b \b"); }
        } else if (idx < bufSize - 1) {
            buf[idx++] = c; xil_printf("%c", c);
        }
    }
    buf[idx] = '\0';
}

/* Helper: Prompts for one float field */
static float DemoPromptFloat(const char *label, float current)
{
    char buf[32], valBuf[16];
    snprintf(valBuf, sizeof(valBuf), "%.4f", current);
    xil_printf("%s [%s]: ", label, valBuf);
    DemoReadLine(buf, sizeof(buf));
    if (buf[0] == '\0') return current;
    return (float) atof(buf);
}

/* Helper: Prompts for integer shift count */
static u32 DemoPromptUInt(const char *label, u32 current)
{
    char buf[32];
    xil_printf("%s [%lu]: ", label, (unsigned long) current);
    DemoReadLine(buf, sizeof(buf));
    if (buf[0] == '\0') return current;
    return (u32) strtoul(buf, NULL, 10);
}

/* Helper: Prints the available keys */
static void DemoPrintMenu(void)
{
    xil_printf("\n\rLorenz DDA plotter\n\r");
    xil_printf("  +/-  speed up / down\n\r");
    xil_printf("  p    pause / resume\n\r");
    xil_printf("  i    reload initial conditions\n\r");
    xil_printf("  s    set parameters\n\r");
    xil_printf("  q    quit\n\r\n\r");
}
#endif

void DemoInitialize();
void DemoRun();

int main(void)
{
    DemoInitialize();
    DemoRun();
    return 0;
}

void DemoInitialize()
{
    int Status;
    XAxiVdma_Config *vdmaConfig;
    int i;

    for (i = 0; i < DISPLAY_NUM_FRAMES; i++) {
        pFrames[i] = frameBuf[i];
    }

    TimerInitialize(SCU_TIMER_ID);

    vdmaConfig = XAxiVdma_LookupConfig(VDMA_ID);
    if (!vdmaConfig) {
        xil_printf("No video DMA found for ID %d\r\n", VDMA_ID);
        return;
    }
    Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
        return;
    }

    Status = DisplayInitialize(&dispCtrl, &vdma, HDMI_OUT_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
    if (Status != XST_SUCCESS) {
        xil_printf("Display Ctrl initialization failed\r\n");
        return;
    }
    
    /* Switch display to 1920x1080 */
    DisplayStop(&dispCtrl);
    DisplaySetMode(&dispCtrl, &VMODE_1920x1080);
    Status = DisplayStart(&dispCtrl);
    if (Status != XST_SUCCESS) {
        xil_printf("Couldn't switch display to 1920x1080 %d\r\n", Status);
        return;
    }
}

void DemoRun()
{
    char userInput = 0;
#ifdef HAVE_LORENZ_DDA
    u32 stepDelayUs = 6000u;
    u8 paused = 0;
    
    /* Default Lorenz parameters */
    float x0 = 0.5f, y0 = 0.0f, z0 = 0.0f;
    float sigma = 10.0f, rho = 25.0f, beta = 2.0f;
    u32 dtShift = 10u;
#endif

    /* Flush UART FIFO */
    while (XUartPs_IsReceiveData(UART_BASEADDR)) {
        XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
    }

#ifdef HAVE_LORENZ_DDA
    /* TODO: Initialize your LorenzDDAPlot hardware, set parameters, load them, and flush the D-Cache */
    

    DemoPrintMenu();

    while (userInput != 'q')
    {
        /* TODO: Implement a non-blocking check for UART data.
         * While there is NO user input:
         *   1. If not paused, update the Lorenz plot (step hardware and draw).
         *   2. Flush the data cache (Xil_DCacheFlushRange) so the HDMI controller sees the new pixels.
         *   3. Delay for stepDelayUs using TimerDelay().
         */
         

        /* Read the user input once it is available */
        userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
        xil_printf("%c", userInput);

        /* TODO: Implement your command interpreter (switch statement) here to handle:
         * '+' : Speed up (decrease stepDelayUs)
         * '-' : Slow down (increase stepDelayUs)
         * 'p' : Pause / Resume
         * 'i' : Reload initial conditions and clear the screen
         * 's' : Dynamically prompt for new parameters using the DemoPrompt helpers
         * 'q' : Quit
         */
         
         
    }
#else
    xil_printf("HAVE_LORENZ_DDA is not defined in xparameters.h yet. Re-export hardware from Vivado.\n\r");
    while (userInput != 'q') {
        while (!XUartPs_IsReceiveData(UART_BASEADDR)) {}
        userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
    }
#endif
}