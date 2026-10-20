// mandel.h -- PS side of the Mandelbrot renderer (mandelbrot_driver IP)
#ifndef MANDEL_H_
#define MANDEL_H_

#include "xil_types.h"
#include "../display_ctrl/display_ctrl.h"

// Mandelbrot menu: renders into frames[0] and shows it at 1920x1080; does not return.
void MandelMenu(DisplayCtrl *disp, u8 *frames[DISPLAY_NUM_FRAMES]);

#endif /* MANDEL_H_ */
