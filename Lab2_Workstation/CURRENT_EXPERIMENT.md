# Current Mandelbrot experiment - 2026-11-10

**25 x 18-bit is board-measured: 35.543 ms (3,554,303 clocks).**
Checkout: C:/Users/zk67/zybo-18-n25
Branch: solver-18-n25
Result: 79/80 DSPs, 13,045 LUTs, 15,607 registers,
11 BRAM tiles; setup/hold +0.262/+0.024 ns.
Nine bus-skew constraints pass. 4,555 LUTs unused; 98.55% slices occupied.
Short model/protocol checks passed. No long full-frame simulation was run.

Verified named XSA:
C:/Users/zk67/zybo-18-n25/Lab2_Workstation/precision/artifacts/w18_n25/design_1_wrapper_w18_n25.xsa
Use the matching named .bit in the same folder. Format register 0x4d420e12.
User should check Q4.14, 18 bits, minimum step 512 and 25 built/active solvers.
Completed canonical f run: centre (-0.75,0), step 18641, max_iter 1000,
25 of 25 solvers, STATUS 0x2, 35.543 ms. Raw board data is saved on solver-18-n25.
A sweep and multiple repeats are optional. Updated precision-aware mandel.c
is available in this checkout; no application/workspace change is made by the agent.

## Completed just before this
10 x 24-bit, solver-24-n10 at 6df2bae: user measured 76.869 ms,
7,686,944 clocks, canonical view, 32 clocks above the ideal-AXI simulation.
XSA/.bit, reports and raw board data are pushed on that branch.

## Next
The user supplied the 25-solver measurement. Next synthesize a complete LUT-only solver,
verify zero DSP use and the same integer arithmetic, then add fabric lanes.
Measure actual packing/timing/throughput, not a LUT-only arithmetic upper bound.
Skip intermediate physical builds. Longer simulation only if a new change or
failure needs it. Preserve Vitis; user programs/runs the board. No hardware-main push.
