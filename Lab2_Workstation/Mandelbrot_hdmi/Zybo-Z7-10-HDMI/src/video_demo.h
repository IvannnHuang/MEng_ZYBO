// video_demo.h -- Zybo Z7-10 Mandelbrot application (HDMI output setup)
// Based on Digilent's ZYBO video demo; the HDMI capture part is removed.
#ifndef VIDEO_DEMO_H_
#define VIDEO_DEMO_H_

#include "xil_types.h"
#include "display_ctrl/display_ctrl.h"

#define DEMO_MAX_FRAME (1920*1080*3)    // one 24-bit 1080p frame
#define DEMO_STRIDE    (1920 * 3)       // bytes per line

int DemoInitialize(void);

#endif /* VIDEO_DEMO_H_ */
