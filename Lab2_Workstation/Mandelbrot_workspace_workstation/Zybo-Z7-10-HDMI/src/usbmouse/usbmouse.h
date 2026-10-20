// usbmouse.h -- polled bare-metal USB host driver for one HID mouse on the Zybo Z7 USB host port.
#ifndef USBMOUSE_H_
#define USBMOUSE_H_

#include "xil_types.h"

// Resets USB0 into host mode, powers the port, and enumerates the attached mouse in boot
// protocol. Prints progress/failure over the UART. Returns 0 on success, -1 on failure.
// Safe to call again (e.g. after plugging the mouse in later).
int UsbMouseInit(void);

// Non-blocking. Returns 1 and fills dx/dy (signed device counts, +dy = down) and buttons
// (bit0 left, bit1 right, bit2 middle) when a new report has arrived; otherwise returns 0.
int UsbMousePoll(s8 *dx, s8 *dy, u8 *buttons);

#endif /* USBMOUSE_H_ */
