// video_demo.c -- Zybo Z7-10 Mandelbrot application: HDMI output at 1080p + Mandelbrot menu
// Based on Digilent's ZYBO video demo (display_ctrl driver); HDMI capture code removed.
#include <stdio.h>
#include "xil_types.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "video_demo.h"
#include "mandel/mandel.h"

#define DYNCLK_BASEADDR   XPAR_AXI_DYNCLK_0_S_AXI_LITE_BASEADDR
#define VDMA_ID           XPAR_AXIVDMA_0_DEVICE_ID
#define HDMI_OUT_VTC_ID   XPAR_V_TC_OUT_DEVICE_ID

DisplayCtrl dispCtrl;
XAxiVdma    vdma;

// Frame buffers in DDR; 128-byte aligned because the Mandelbrot IP writes 128-byte bursts.
u8  frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__((aligned(128)));
u8 *pFrames[DISPLAY_NUM_FRAMES];

int main(void)
{
    if (DemoInitialize() != XST_SUCCESS) {
        xil_printf("\r\nHDMI output initialization failed\r\n");
        return -1;
    }
    while (1)
        MandelMenu(&dispCtrl, pFrames);
    return 0;
}

// Start VDMA read + timing generator + pixel clock at 1920x1080@60, showing frame 0.
int DemoInitialize(void)
{
    XAxiVdma_Config *vdmaConfig;
    int status, i;

    for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
        pFrames[i] = frameBuf[i];

    vdmaConfig = XAxiVdma_LookupConfig(VDMA_ID);
    if (!vdmaConfig) {
        xil_printf("No video DMA found for ID %d\r\n", VDMA_ID);
        return XST_FAILURE;
    }
    status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("VDMA init failed %d\r\n", status);
        return status;
    }

    status = DisplayInitialize(&dispCtrl, &vdma, HDMI_OUT_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
    if (status != XST_SUCCESS) {
        xil_printf("Display init failed %d\r\n", status);
        return status;
    }
    DisplaySetMode(&dispCtrl, &VMODE_1920x1080);   // display is still stopped: only stores the mode
    DisplayChangeFrame(&dispCtrl, 0);              // frame 0 = Mandelbrot frame
    status = DisplayStart(&dispCtrl);
    if (status != XST_SUCCESS) {
        xil_printf("Display start failed %d\r\n", status);
        return status;
    }
    xil_printf("\r\nHDMI out: %s, frame 0 at 0x%08x\r\n", dispCtrl.vMode.label, (u32)pFrames[0]);
    return XST_SUCCESS;
}
