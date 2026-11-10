# 24-bit Q4.20 / ten-solver build - 2026-11-10

**Status: user board-measured at 76.869 ms on the canonical full-set view.**
The user runs Vitis Classic and the FPGA on COM5. No Vitis workspace import,
software build, FPGA programming or board execution was performed by the agent.

Checkout: C:/Users/zk67/zybo-24-n10
Branch: solver-24-n10
24-bit baseline: 693423a. Preparation/test helper checkpoint: dee6409.

Only the built solver count changes from eight to ten. Precision stays Q4.20;
the shared classifier, 100 MHz clock, multiplier pipeline, Q4.23 coordinate
interface and 1920x1080 RGB888 frame stay fixed. No arithmetic RTL changed.

| Whole-system routed metric | 24-bit / eight solvers | 24-bit / ten solvers |
|---|---:|---:|
| DSPs / 80 | 52 | 64 |
| Slice LUTs / 17,600 | 7,970 | 8,666 |
| Slice registers / 35,200 | 11,613 | 12,243 |
| BRAM tiles / 60 | 11 | 11 |
| Occupied slices / 4,400 | 3,597 | 3,779 |
| Overall setup slack | +0.318 ns | +0.601 ns |
| Overall hold slack | +0.019 ns | +0.019 ns |
| Ideal-AXI full-frame simulation | 93.47473 ms | 76.86912 ms |
| Board, canonical view | pending | **76.869 ms** |

Measured area increment: +12 DSPs, +696 LUTs, +630 registers; BRAM unchanged.
Engine clock-group WNS: +0.601 ns. All setup/hold/pulse-width checks
pass; 9 bus-skew checks pass, minimum slack
+6.464 ns. Occupied slices are not all full;
remaining raw LUT capacity does not guarantee larger builds will route.

Validation:
- 2,048 solver vectors at each saved precision, including input/output stalls.
- Ten-solver 128x64 frame exactly matches the 24-bit integer oracle under AXI
  backpressure; 65 counts differ from the 27-bit reference, as expected for this width.
- 27/24/18-bit format-register reads stay stable while stalled.
- Full 1080p ideal-AXI frame: **7,686,912 clocks = 76.86912 ms**.
  Checked 2,073,600 results, 777,600 data beats and 48,600 bursts.
  This is a simulation completion/protocol benchmark, not a board measurement
  or an all-pixel full-frame golden comparison.

Frozen hardware, reports and SHA256 hashes:
../artifacts/w24_n10/manifest.json
XSA: ../artifacts/w24_n10/design_1_wrapper_w24_n10.xsa
Bitstream: ../artifacts/w24_n10/design_1_wrapper_w24_n10.bit
Metadata was inspected: SOLVER_W=24, NSOLV=10; embedded .bit matches implementation.
Format register: 0x4d421418. Built-count byte at register 0x20 must be 10.

## Board measurement supplied by the user

Full set: **7,686,944 clocks = 76.86944 ms**, displayed as **76.869 ms**, STATUS 0x2.
Ten active/built solvers; centre (-0.75, 0), step 18641, max_iter 1000.
This is 32 clocks above the ideal-AXI simulation. Raw UART, CSV and JSON are
saved alongside this README. No active-solver sweep or precision banner was
included in this capture. Hardware width/count are verified in the exported XSA.

## Revised next steps agreed by the user

The user has reported the ten-solver board timing. Skip twelve-solvers/24-bit
and the intermediate 18-bit configurations. Go directly to **25 x 18-bit**
in another isolated checkout. DSP budget: 25*3 + 4 = **79/80**.
This is not yet built and is not a routed-fit promise.

Use a short functional/model check and the mandatory utilization, setup/hold
and bus-skew checks. Do not repeat long full-frame simulations or all intermediate
physical configurations unless a change, failure or unresolved concern needs it.
If 25 does not fit or meet timing, inspect the failure and choose a fallback count.

After the useful DSP-backed result, measure a complete LUT-only solver, verify
zero DSP use and the same integer behavior, then add fabric lanes gradually.
The actual combined LUT/DSP maximum remains unmeasured.
The chip-view script's current 16-instance loop must be extended for 25 solvers.

## User-run board handoff (after the named export is verified)

The agent prepares hardware only. Do these steps yourself in Vitis Classic.

1. Right-click the existing design_1_wrapper platform and choose Update Hardware
   Specification. Select the named w24_n10 XSA, then build the platform.
2. The restored workstation application source currently lacks REG_FORMAT and
   solver_quantum support. Copy only the updated mandel.c from this checkout:
   Lab2_Workstation/Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/src/mandel/mandel.c
   into the existing application's corresponding src/mandel/mandel.c.
   Refresh, clean and build the application in the GUI. Do not import projects
   through XSCT or replace workspace metadata.
3. In the hardware launch configuration explicitly choose the matching named
   design_1_wrapper_w24_n10.bit; do not rely on an old bitstream cache.
4. Program/run yourself on COM5. Check Q4.20, 24 bits, minimum step 8 LSB and
   10 built solvers. The format register at IP offset 0x28 remains 0x4d421418;
   the built-count byte in N_ACTIVE at 0x20 must be 10.
5. Set i=1000, n=10, then f. Verify centre (-0.75, 0), zoom x1, step 18641,
   x [-2.8832931519, 1.3810709715], y [-1.1977552176, 1.1999773979].
6. Capture f and, if wanted, b (1..10 active solvers). Extra r repeats are optional. Keep the mouse still.
   Record exact clock counts, display milliseconds, status and screenshots.
7. Optional paired comparison: select n=8 and repeat f/r on this physical build.
   Compare these same-view 24-bit runs with n=10. The old 91.130 ms eight-solver
   measurement was a shifted view and is not a matching benchmark.
8. Save original UART text and fill board_results_template.csv. Report image/zoom
   behavior separately from timing. Do not substitute simulation for board data.

## Chip viewer (optional GUI screenshot, not automatically run)

Once this checkout's batch Vivado process has exited, run from
Lab2_Workstation/Mandelbrot_hdmi/scripts:

    & C:/Xilinx/Vivado/2024.1/bin/vivado.bat -mode gui -nojournal -source chip_view.tcl

Open the Device view, take a screenshot with the ten solver colours visible and
close Vivado without saving project edits. Suggested image name:
Lab2_Workstation/figures/chip_10iter_w24.png.
The script supports up to 16 solvers, which covers this ten-solver build.
It writes a chip_view_ready.txt marker and does not modify the design.
