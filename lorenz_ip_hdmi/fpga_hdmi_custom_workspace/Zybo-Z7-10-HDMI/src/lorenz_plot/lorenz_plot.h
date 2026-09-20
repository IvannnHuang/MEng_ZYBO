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
 * Reads the current X/Y/Z from the Lorenz solver's AXI4-Lite IP at
 * baseAddr, plots one new point into each of the three projections (XY,
 * YZ, XZ - these accumulate over time to trace out the attractor's
 * shape), and redraws the live X/Y/Z numeric readouts. Call repeatedly
 * (e.g. every 20-50ms).
 *
 * baseAddr is the IP's base address (e.g. XPAR_<instance>_S00_AXI_BASEADDR
 * from xparameters.h) - pass whatever macro your block design generates,
 * so this file has no dependency on the IP instance's name.
 *
 * frame/stride use the same layout as the rest of this demo: pixel(x,y)
 * byte offset = x*3 + y*stride, byte order Red, Blue, Green.
 */
void LorenzPlot_Update(u8 *frame, u32 stride, u32 baseAddr);

/*
 * Pause/resume the solver in hardware. Stop() freezes every integrator
 * register in place (see integrator.sv's "run" input) rather than
 * clearing them, so a later Start() resumes computing x/y/z from exactly
 * the values they were paused at - not from the initial conditions, and
 * not from wherever they'd have drifted to if left running unobserved.
 *
 * The AXI-Lite bus itself is never touched by this - only a control
 * register bit inside the IP - so these calls always succeed regardless
 * of whether the solver is currently running or already paused. Both
 * preserve whatever speed was last set with Lorenz_SetSpeed().
 */
void Lorenz_Start(u32 baseAddr);
void Lorenz_Stop(u32 baseAddr);

/*
 * Sets how many AXI clock cycles elapse per Lorenz integration step:
 * 1 = full speed (the power-on default, identical to the original
 * always-on behavior), larger values slow the simulation down. This
 * changes how fast the attractor evolves, not s00_axi_aclk itself -
 * see the speed_div comment in lorenz_reader.v. Preserves whatever
 * run/pause state is currently set.
 */
void Lorenz_SetSpeed(u32 baseAddr, u32 cyclesPerStep);

#endif /* LORENZ_PLOT_H_ */
