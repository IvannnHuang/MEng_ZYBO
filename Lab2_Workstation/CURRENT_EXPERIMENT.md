# Current Mandelbrot experiment - 2026-11-10

**10 x 24-bit is complete: user measured 76.869 ms on the canonical view.**
Checkout: C:/Users/zk67/zybo-24-n10; branch solver-24-n10.
Full record: precision/w24_n10/README.md on that branch.
Named XSA/.bit and hashes: precision/artifacts/w24_n10/manifest.json.

Actual routed use: 64/80 DSPs, 8,666 LUTs,
12,243 registers, 11 BRAM tiles.
Overall setup/hold slack +0.601/+0.019 ns.
Full-frame ideal-AXI simulation: 7,686,912 clocks = 76.86912 ms.
Board: 7,686,944 clocks = 76.86944 ms, displayed 76.869 ms; STATUS 0x2.
This is 32 clocks above simulation. The user has now supplied this measurement.
Next authorized build: jump directly to 25 x 18-bit, then investigate LUT solvers.

Load:
C:/Users/zk67/zybo-24-n10/Lab2_Workstation/precision/artifacts/w24_n10/design_1_wrapper_w24_n10.xsa
Use its matching design_1_wrapper_w24_n10.bit in the same folder.
The older workstation mandel.c lacks precision reporting/zoom limits; user should
copy the updated src/mandel/mandel.c from this checkout and build in Vitis Classic.
Check Q4.20, 24 bits, minimum step 8 LSB and 10 built solvers. Capture canonical f
(centre -0.75,0; step 18641; max_iter 1000), optionally b and repeats.

## User's revised sequence
1. Completed: user measured 10 x 24-bit on COM5 at 76.869 ms.
2. Jump directly to 25 x 18-bit (79/80 DSP budget); skip intermediate builds.
3. Measure LUT-only solvers and add fabric lanes to find the combined limit.

Keep future checks targeted: short correctness/model verification and mandatory
resource/setup/hold/bus-skew checks. Longer simulations only when justified.
No Vitis/XSCT imports or board runs by the agent. Do not push hardware main.
