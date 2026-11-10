# Current Mandelbrot experiment - 2026-11-10

Status: IN PROGRESS. The user explicitly resumed work for **10 solvers at 24-bit
Q4.20**. This supersedes yesterday's testing hold only for this experiment.
Twelve-solver builds, further 18-bit scaling and LUT-built solvers remain future work.

Checkout: C:/Users/zk67/zybo-24-n10
Branch: solver-24-n10
Hardware baseline: solver-precision commit 693423a (24-bit, eight solvers).
Parameterized test/export helpers are copied from solver-native18 commit 319f9f9.

Change: NSOLV 8 -> 10; SOLVER_W remains 24.
Preserve 100 MHz, 1080p RGB888, coordinate ABI, classifier and multiplier pipeline.
No Mandelbrot arithmetic RTL is modified for the new solver count.
DSP planning budget: 10*6 + 4 = 64/80. Actual area/timing are not yet measured.

Build: build_precision.tcl -tclargs 10 24 repackage
Validation: run_precision.ps1 -SolverWidth 24 -Solvers 10 -FullFrame
Export: export_precision_snapshot.py --width 24 --solvers 10

Use only the isolated checkout. Do not import/register projects through XSCT,
modify the user's Vitis workspace, or program/run the board from the agent.
The user runs Vitis and board measurements on COM5. Preserve all old artifacts.
Do not push the hardware repository's main branch.

Expected named outputs after successful verification:
Lab2_Workstation/precision/artifacts/w24_n10/design_1_wrapper_w24_n10.xsa
Lab2_Workstation/precision/artifacts/w24_n10/design_1_wrapper_w24_n10.bit
