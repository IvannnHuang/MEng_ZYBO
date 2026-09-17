#ifndef LORENZ_PLOT_H_
#define LORENZ_PLOT_H_

#include "xil_types.h"

/*
 * Sets up the three phase-plane projection plots (XY, YZ, XZ) - their
 * screen position, size, and axis ranges. Call once before the first
 * LorenzPlot_ClearAll/LorenzPlot_Update.
 */
void LorenzPlot_Init(void);

/*
 * Blacks out the three plot regions in the frame buffer. Call once
 * before the first LorenzPlot_Update to start from a blank canvas.
 */
void LorenzPlot_ClearAll(u8 *frame, u32 stride);

/*
 * Reads the current X/Y/Z from the lorenz_reader AXI4-Lite IP, plots one
 * new point into each of the three projections (XY, YZ, XZ - these
 * accumulate over time to trace out the attractor's shape), and redraws
 * the live X/Y/Z numeric readouts. Call repeatedly (e.g. every 20-50ms).
 *
 * frame/stride use the same layout as the rest of this demo: pixel(x,y)
 * byte offset = x*3 + y*stride, byte order Red, Blue, Green.
 */
void LorenzPlot_Update(u8 *frame, u32 stride);

#endif /* LORENZ_PLOT_H_ */
