#ifndef LORENZ_DDA_H_
#define LORENZ_DDA_H_

#include "xil_types.h"

/* Driver for the lorenz_dda_driver AXI4-Lite IP (see lorenz_dda_driver_slave_lite_v1_0_S00_AXI.v for the register map). Unlike lorenz_reader, this is a single-step Euler integrator - LorenzDDA_Step() pulses "enable" for one AXI clock edge, advancing x/y/z by exactly one step; there's no hardware speed divider, so the PS controls pace purely by how often it calls Step(). All registers except REG_DT are signed Q6.20 (raw/1048576.0 <-> float); REG_DT is instead used directly as a right-shift amount, not Q6.20 - see LorenzDDA_SetParams()'s dtShift argument. */

/* Lays out a fixed 1920x1080, four-quadrant screen (XY/YZ/XZ projections plus a live parameter panel); call once, after the display is already running at 1920x1080. */
void LorenzDDAPlot_Init(void);

/* Blacks out the plots and panel and redraws the static divider/labels; call once before the first Update, and again to wipe the accumulated trace (e.g. after LorenzDDA_Load()). */
void LorenzDDAPlot_ClearAll(u8 *frame, u32 stride);

/* Writes x0/y0/z0/sigma/rho/beta (real values) and dtShift (raw HW shift count, not Q6.20) into the IP's registers; call LorenzDDA_Load() afterward to actually latch x/y/z. */
void LorenzDDA_SetParams(u32 baseAddr, float x0, float y0, float z0,
                          float sigma, float rho, float beta, u32 dtShift);

/* Pulses REG_CTRL bit1 (load), snapping the integrators back to the last-written x_init/y_init/z_init. */
void LorenzDDA_Load(u32 baseAddr);

/* Pulses REG_CTRL bit0 (enable), advancing the solver by exactly one Euler step. */
void LorenzDDA_Step(u32 baseAddr);

/* Reads x_next/y_next/z_next back as floats. */
void LorenzDDA_ReadState(u32 baseAddr, float *x, float *y, float *z);

/* Reads sigma/rho/beta/dtShift back from hardware - a debug/utility accessor, not used on the per-frame hot path. */
void LorenzDDA_ReadParams(u32 baseAddr, float *sigma, float *rho, float *beta, u32 *dtShift);

/* Draws the panel's left column (x0/y0/z0/sigma/rho/beta/dt) once; call after LorenzDDA_SetParams() (and again after any LorenzDDAPlot_ClearAll(), which erases it). */
void LorenzDDAPlot_ShowInitValues(u8 *frame, u32 stride, float x0, float y0, float z0,
                                   float sigma, float rho, float beta, u32 dtShift);

/* Advances the solver by several steps (LORENZ_DDA_STEPS_PER_UPDATE in lorenz_dda.c), plots the point into all three projections, and refreshes the panel's right (live output) column; call repeatedly (e.g. every 20-50ms) once Init/SetParams/Load/ShowInitValues have run. baseAddr is the IP's XPAR_<instance>_S00_AXI_BASEADDR; frame/stride use this demo's pixel(x,y) = x*3 + y*stride, byte order Red/Blue/Green. */
void LorenzDDAPlot_Update(u8 *frame, u32 stride, u32 baseAddr);

#endif /* LORENZ_DDA_H_ */
