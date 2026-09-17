#ifndef SWITCH_READER_H_
#define SWITCH_READER_H_

#include "xil_types.h"

/*
 * Reads register 0 of the switch_reader AXI4-Lite IP: the live,
 * synchronized value of the 4 on-board slide switches.
 */
u32 SwitchReader_Read(u32 baseAddr);

/*
 * Renders "value" as decimal text directly into a video frame buffer,
 * using a simple built-in 5x7 bitmap font. frame/stride use the same
 * layout as DemoPrintTest (pixel(x,y) byte offset = x*3 + y*stride,
 * byte order Red, Blue, Green).
 *
 * scale: size multiplier per font pixel (e.g. 8 -> each font pixel
 * becomes an 8x8 block on screen, so digits are readable on an HDMI TV).
 */
void SwitchReader_DrawDecimal(u8 *frame, u32 stride, u32 value,
                               u32 xOrigin, u32 yOrigin, u32 scale,
                               u8 red, u8 blue, u8 green);

/*
 * Same idea as SwitchReader_DrawDecimal, but for a signed float with a
 * fixed number of decimal places (e.g. decimals=2 -> "-3.42"). Supports
 * digits, a minus sign, and a decimal point.
 */
void SwitchReader_DrawFloat(u8 *frame, u32 stride, float value, int decimals,
                             u32 xOrigin, u32 yOrigin, u32 scale,
                             u8 red, u8 blue, u8 green);

#endif /* SWITCH_READER_H_ */
