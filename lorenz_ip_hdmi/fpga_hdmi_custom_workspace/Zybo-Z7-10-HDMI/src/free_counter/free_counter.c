#include "free_counter.h"
#include "xil_io.h"

#define FREE_COUNTER_REG0_OFFSET 0x0

u32 FreeCounter_Read(u32 baseAddr)
{
	return Xil_In32(baseAddr + FREE_COUNTER_REG0_OFFSET);
}
