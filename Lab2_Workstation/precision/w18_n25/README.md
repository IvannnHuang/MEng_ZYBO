# 25 x 18-bit experiment - 2026-11-10

Status: IN PROGRESS, authorized after the user's ten-solver board measurement.
The ten-solver 24-bit result is saved on solver-24-n10 at 6df2bae: 76.869 ms.
This build jumps directly to 25 x 18-bit; no intermediate physical builds.

Checkout: C:/Users/zk67/zybo-18-n25
Branch: solver-18-n25
Baseline: solver-native18 at 319f9f9 (eight 18-bit solvers).
Change: NSOLV 8 -> 25. SOLVER_W=18, Q4.14, 100 MHz, shared test and 1080p fixed.
Expected DSP budget: 25*3 + 4 = 79/80. Routed fit and timing are not yet known.
No arithmetic RTL change is intended.

Validation is the existing short run_precision.ps1 -SolverWidth 18 -Solvers 25
without -FullFrame, plus routed utilization/setup/hold/bus-skew checks.
No repeated full-frame simulation is planned unless a failure justifies it.

Preserve the user's Vitis workspace. The user programs/runs the board on COM5.
Expected format register 0x4d420e12, minimum software step 512 and 25 built solvers.
Use the updated mandel.c for precision reporting and the correct zoom clamp.
After the named artifact is verified, user should capture canonical f at
centre (-0.75,0), step 18641, max_iter 1000, all 25 active solvers.
A full 1..25 sweep and multiple repeats are optional.

Next after a usable DSP-backed result: synthesize a complete LUT-only solver,
check zero DSP use and matching integer arithmetic, then add fabric lanes to
measure the actual combined resource/throughput limit. No hybrid solver exists yet.
