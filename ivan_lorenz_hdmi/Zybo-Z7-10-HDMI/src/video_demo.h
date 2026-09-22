/************************************************************************/
/*																		*/
/*	video_demo.h	--	Lorenz DDA HDMI plotter 						*/
/*																		*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		Drives the HDMI output at 1920x1080 and runs the Lorenz DDA		*/
/*		solver's live phase-plane plot (see lorenz_dda/lorenz_dda.h).		*/
/*		Trimmed down from Digilent's original video in/out demo: only		*/
/*		the HDMI output path (display_ctrl) is used - there is no			*/
/*		HDMI input capture or video passthrough in this build.			*/
/*																		*/
/************************************************************************/

#ifndef VIDEO_DEMO_H_
#define VIDEO_DEMO_H_

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "xil_types.h"
#include "display_ctrl/display_ctrl.h"

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */

/*
 * Framebuffer sized for the largest resolution this demo drives
 * (1920x1080, 3 bytes/pixel). Also used as the VDMA line stride.
 */
#define DEMO_MAX_FRAME (1920*1080*3)
#define DEMO_STRIDE (1920 * 3)

/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

void DemoInitialize();
void DemoRun();

/* ------------------------------------------------------------ */

/************************************************************************/

#endif /* VIDEO_DEMO_H_ */
