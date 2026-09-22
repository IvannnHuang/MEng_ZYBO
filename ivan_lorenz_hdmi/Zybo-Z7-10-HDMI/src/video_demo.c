/************************************************************************/
/*																		*/
/*	video_demo.c	--	Lorenz DDA HDMI plotter 						*/
/*																		*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		Brings up the HDMI output at 1920x1080 and runs the Lorenz DDA	*/
/*		solver's live phase-plane plot full-screen (see					*/
/*		lorenz_dda/lorenz_dda.h). Trimmed down from Digilent's original	*/
/*		video in/out demo: only the HDMI output path (display_ctrl) is	*/
/*		used here - no HDMI input capture, no test patterns, no			*/
/*		interrupt-driven video-detect refresh.							*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "video_demo.h"
#include "display_ctrl/display_ctrl.h"
#include "lorenz_dda/lorenz_dda.h"
#include <stdio.h>
#include <stdlib.h>
#include "xuartps.h"
#include "xil_types.h"
#include "xil_cache.h"
#include "timer_ps/timer_ps.h"
#include "xparameters.h"

/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR 		XPAR_AXI_DYNCLK_0_S_AXI_LITE_BASEADDR
#define VDMA_ID 				XPAR_AXIVDMA_0_DEVICE_ID
#define HDMI_OUT_VTC_ID 		XPAR_V_TC_OUT_DEVICE_ID
#define SCU_TIMER_ID 			XPAR_SCUTIMER_DEVICE_ID
#define UART_BASEADDR 			XPAR_PS7_UART_1_BASEADDR
/* ============================================================== */
/* ===== EDIT HERE IF YOUR LORENZ DDA IP HAS A DIFFERENT NAME ==== */
/* ============================================================== */
/* Needs XPAR_LORENZ_DDA_DRIVER_0_S00_AXI_BASEADDR in xparameters.h - edit both lines below if your IP instance is named differently, or re-export hardware from Vivado if it's missing entirely. */
#ifdef XPAR_LORENZ_DDA_DRIVER_0_S00_AXI_BASEADDR                 /* <-- EDIT: replace with your macro */
#define HAVE_LORENZ_DDA
#define LORENZ_DDA_BASEADDR	XPAR_LORENZ_DDA_DRIVER_0_S00_AXI_BASEADDR /* <-- EDIT: replace with your macro */
#endif
/* ============================================================== */
/* ===================== END EDIT SECTION ========================= */
/* ============================================================== */

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/* Display driver structs (HDMI output only - no video capture/input) */
DisplayCtrl dispCtrl;
XAxiVdma vdma;

/* Framebuffers for video data */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME] __attribute__((aligned(0x20)));
u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

#ifdef HAVE_LORENZ_DDA
/* Blocking UART line read (echoes chars, handles backspace, ends on CR/LF) - used by the 's' menu entry for free-form input, unlike the single-keystroke reads elsewhere in this file. */
static void DemoReadLine(char *buf, u32 bufSize)
{
	u32 idx = 0;
	char c;

	for (;;)
	{
		while (!XUartPs_IsReceiveData(UART_BASEADDR))
		{}
		c = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);

		if (c == '\r' || c == '\n')
		{
			xil_printf("\n\r");
			break;
		}
		else if (c == 0x08 || c == 0x7F) /* backspace / delete */
		{
			if (idx > 0)
			{
				idx--;
				xil_printf("\b \b");
			}
		}
		else if (idx < bufSize - 1)
		{
			buf[idx++] = c;
			xil_printf("%c", c);
		}
	}
	buf[idx] = '\0';
}

/* Prompts for one float field, showing "current" as the default; an empty line keeps it unchanged. */
static float DemoPromptFloat(const char *label, float current)
{
	char buf[32];
	char valBuf[16];

	/* xil_printf has no %f, and printf's buffering can swallow output with no trailing '\n' - so format via snprintf (proven to work) and print via xil_printf. */
	snprintf(valBuf, sizeof(valBuf), "%.4f", current);
	xil_printf("%s [%s]: ", label, valBuf);
	DemoReadLine(buf, sizeof(buf));
	if (buf[0] == '\0')
		return current;
	return (float) atof(buf);
}

/* Same as DemoPromptFloat, but for dtShift - a raw hardware shift count, not a real value (see lorenz_dda.h). */
static u32 DemoPromptUInt(const char *label, u32 current)
{
	char buf[32];

	xil_printf("%s [%lu]: ", label, (unsigned long) current);
	DemoReadLine(buf, sizeof(buf));
	if (buf[0] == '\0')
		return current;
	return (u32) strtoul(buf, NULL, 10);
}

/* Prints the available keys once at startup. */
static void DemoPrintMenu(void)
{
	xil_printf("\n\rLorenz DDA plotter\n\r");
	xil_printf("  +/-  speed up / down\n\r");
	xil_printf("  p    pause / resume\n\r");
	xil_printf("  i    reload initial conditions\n\r");
	xil_printf("  s    set parameters\n\r");
	xil_printf("  q    quit\n\r");
	xil_printf("\n\r");
}
#endif

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

	/* Initialize an array of pointers to the 3 frame buffers */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/* Initialize a timer used for a simple delay */
	TimerInitialize(SCU_TIMER_ID);

	/* Initialize VDMA driver */
	vdmaConfig = XAxiVdma_LookupConfig(VDMA_ID);
	if (!vdmaConfig)
	{
		xil_printf("No video DMA found for ID %d\r\n", VDMA_ID);
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
		return;
	}

	/* Initialize the Display controller and start it */
	Status = DisplayInitialize(&dispCtrl, &vdma, HDMI_OUT_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Display Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't start display during demo initialization%d\r\n", Status);
		return;
	}

	/* DisplayInitialize() defaults to 640x480 - switch up to 1920x1080 for real screen real estate. */
	DisplayStop(&dispCtrl);
	DisplaySetMode(&dispCtrl, &VMODE_1920x1080);
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't switch display to 1920x1080 %d\r\n", Status);
		return;
	}

	/* Framebuffers start zeroed (BSS) and no test pattern is drawn, so the screen starts black - LorenzDDAPlot_ClearAll() in DemoRun() draws the chrome. */

	return;
}


void DemoRun()
{
	char userInput = 0;
#ifdef HAVE_LORENZ_DDA
	/* PS-side delay between displayed points (no HW speed divider); 6000us is 5x the original 30000us default. */
	u32 stepDelayUs = 6000u;
	u8 paused = 0;
	/* Current Lorenz parameters (classic sigma=10, rho=28, beta=8/3); dtShift is a raw HW shift count, not Q6.20 - kept as vars so 's' can show/update them. */
	float x0 = 0.5f, y0 = 0.0f, z0 = 0.0f;
	float sigma = 10.0f, rho = 25.0f, beta = (8.0f / 3.0f);
	u32 dtShift = 10u;
#endif

	/* Flush UART FIFO */
	while (XUartPs_IsReceiveData(UART_BASEADDR))
	{
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
			/* Halve the delay (2x speed), floored at 100us. */
			if (stepDelayUs > 1u)
				stepDelayUs /= 2;
			xil_printf("\n\rStep delay: %lu us\n\r", (unsigned long) stepDelayUs);
			break;
		case '-':
			/* Double the delay (0.5x speed), capped at ~1s. */
			if (stepDelayUs < 1000000u)
				stepDelayUs *= 2;
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
			xil_printf("\n\rSet Lorenz parameters (Enter keeps the current value shown in brackets):\n\r");
			x0    = DemoPromptFloat("x0",    x0);
			y0    = DemoPromptFloat("y0",    y0);
			z0    = DemoPromptFloat("z0",    z0);
			sigma = DemoPromptFloat("sigma", sigma);
			rho   = DemoPromptFloat("rho",   rho);
			beta  = DemoPromptFloat("beta",  beta);
			dtShift = DemoPromptUInt("dt (raw shift count, larger = slower/more stable)", dtShift);

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
	xil_printf("HAVE_LORENZ_DDA is not defined - this project's xparameters.h doesn't\n\r");
	xil_printf("contain XPAR_LORENZ_DDA_DRIVER_0_S00_AXI_BASEADDR yet. Re-export hardware\n\r");
	xil_printf("from Vivado and update this Vitis platform (see video_demo.c). Press 'q' to quit.\n\r");

	while (userInput != 'q')
	{
		while (!XUartPs_IsReceiveData(UART_BASEADDR))
		{}
		userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
	}
#endif

	return;
}
