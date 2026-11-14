/************************************************************************/
/*                                                                      */
/*  video_demo.c    --  Lorenz DDA HDMI plotter (Instructor Master)     */
/*                                                                      */
/************************************************************************/

#include "video_demo.h"

#include "display_ctrl/display_ctrl.h"
#include "lorenz_dda/lorenz_dda_instructor.h"
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

#ifdef XPAR_LORENZ_DDA_DRIVER_0_BASEADDR
#define HAVE_LORENZ_DDA
#define LORENZ_DDA_BASEADDR XPAR_LORENZ_DDA_DRIVER_0_BASEADDR
#endif

DisplayCtrl dispCtrl;
XAxiVdma vdma;

u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__((aligned(0x20)));
u8 *pFrames[DISPLAY_NUM_FRAMES];

#ifdef HAVE_LORENZ_DDA
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

static float DemoPromptFloat(const char *label, float current)
{
    char buf[32], valBuf[16];
    snprintf(valBuf, sizeof(valBuf), "%.4f", current);
    xil_printf("%s [%s]: ", label, valBuf);
    DemoReadLine(buf, sizeof(buf));
    if (buf[0] == '\0') return current;
    return (float) atof(buf);
}

static u32 DemoPromptUInt(const char *label, u32 current)
{
    char buf[32];
    xil_printf("%s [%lu]: ", label, (unsigned long) current);
    DemoReadLine(buf, sizeof(buf));
    if (buf[0] == '\0') return current;
    return (u32) strtoul(buf, NULL, 10);
}

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
    float x0 = 0.5f, y0 = 0.0f, z0 = 0.0f;
    float sigma = 10.0f, rho = 25.0f, beta = 2.0f;
    u32 dtShift = 10u;
#endif

    while (XUartPs_IsReceiveData(UART_BASEADDR)) {
        XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
    }

#ifdef HAVE_LORENZ_DDA
    LorenzDDAPlot_Init();
    LorenzDDAPlot_ClearAll(pFrames[dispCtrl.curFrame], DEMO_STRIDE);
    LorenzDDA_SetParams(LORENZ_DDA_BASEADDR, x0, y0, z0, sigma, rho, beta, dtShift);
    LorenzDDA_Load(LORENZ_DDA_BASEADDR);
    LorenzDDAPlot_ShowInitValues(pFrames[dispCtrl.curFrame], DEMO_STRIDE, x0, y0, z0, sigma, rho, beta, dtShift);
    Xil_DCacheFlushRange((unsigned int) pFrames[dispCtrl.curFrame], DEMO_MAX_FRAME);

    DemoPrintMenu();

    while (userInput != 'q')
    {
        while (!XUartPs_IsReceiveData(UART_BASEADDR))
        {
            if (!paused)
            {
                LorenzDDAPlot_Update(pFrames[dispCtrl.curFrame], DEMO_STRIDE, LORENZ_DDA_BASEADDR);
                Xil_DCacheFlushRange((unsigned int) pFrames[dispCtrl.curFrame], DEMO_MAX_FRAME);
            }
            TimerDelay(stepDelayUs);
        }
        userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
        xil_printf("%c", userInput);

        switch (userInput)
        {
        case '+':
            if (stepDelayUs > 1u) stepDelayUs /= 2;
            xil_printf("\n\rStep delay: %lu us\n\r", (unsigned long) stepDelayUs);
            break;
        case '-':
            if (stepDelayUs < 1000000u) stepDelayUs *= 2;
            xil_printf("\n\rStep delay: %lu us\n\r", (unsigned long) stepDelayUs);
            break;
        case 'p':
        case 'P':
            paused = !paused;
            xil_printf("\n\r%s\n\r", paused ? "Paused - 'p' resumes" : "Resumed");
            break;
        case 'i':
        case 'I':
            LorenzDDA_Load(LORENZ_DDA_BASEADDR);
            LorenzDDAPlot_ClearAll(pFrames[dispCtrl.curFrame], DEMO_STRIDE);
            LorenzDDAPlot_ShowInitValues(pFrames[dispCtrl.curFrame], DEMO_STRIDE, x0, y0, z0, sigma, rho, beta, dtShift);
            Xil_DCacheFlushRange((unsigned int) pFrames[dispCtrl.curFrame], DEMO_MAX_FRAME);
            xil_printf("\n\rReloaded initial conditions\n\r");
            break;
        case 's':
        case 'S':
            xil_printf("\n\rSet Lorenz parameters (Enter keeps current):\n\r");
            x0    = DemoPromptFloat("x0",    x0);
            y0    = DemoPromptFloat("y0",    y0);
            z0    = DemoPromptFloat("z0",    z0);
            sigma = DemoPromptFloat("sigma", sigma);
            rho   = DemoPromptFloat("rho",   rho);
            beta  = DemoPromptFloat("beta",  beta);
            dtShift = DemoPromptUInt("dt (raw shift count)", dtShift);

            LorenzDDA_SetParams(LORENZ_DDA_BASEADDR, x0, y0, z0, sigma, rho, beta, dtShift);
            LorenzDDA_Load(LORENZ_DDA_BASEADDR);
            LorenzDDAPlot_ClearAll(pFrames[dispCtrl.curFrame], DEMO_STRIDE);
            LorenzDDAPlot_ShowInitValues(pFrames[dispCtrl.curFrame], DEMO_STRIDE, x0, y0, z0, sigma, rho, beta, dtShift);
            Xil_DCacheFlushRange((unsigned int) pFrames[dispCtrl.curFrame], DEMO_MAX_FRAME);
            xil_printf("\n\rParameters updated, trace reloaded\n\r");
            break;
        case 'q':
            break;
        default:
            xil_printf("\n\rInvalid selection\n\r");
        }
    }
#else
    xil_printf("HAVE_LORENZ_DDA is not defined. Re-export hardware from Vivado.\n\r");
    while (userInput != 'q') {
        while (!XUartPs_IsReceiveData(UART_BASEADDR)) {}
        userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
    }
#endif
}
