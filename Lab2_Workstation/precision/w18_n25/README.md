# 25 x 18-bit experiment - 2026-11-10

**Status: user board-measured canonical full set at 35.543 ms.**
The ten-solver 24-bit result is saved on solver-24-n10 at 6df2bae: 76.869 ms.
This build jumps directly to 25 x 18-bit; no intermediate physical builds.

Checkout: C:/Users/zk67/zybo-18-n25
Branch: solver-18-n25
Baseline: solver-native18 at 319f9f9 (eight 18-bit solvers).
Change: NSOLV 8 -> 25. SOLVER_W=18, Q4.14, 100 MHz, shared test and 1080p fixed.
Actual DSP use: 25*3 + 4 = 79/80. This configuration fits and meets timing.
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


## Actual routed result

| Metric | Used / available |
|---|---:|
| DSPs | 79 / 80 (98.75%) |
| LUTs | 13,045 / 17,600 (74.12%) |
| Registers | 15,607 / 35,200 (44.34%) |
| BRAM tiles | 11 / 60 |
| Occupied slices | 4,336 / 4,400 (98.55%) |
| Overall setup / hold slack | +0.262 / +0.024 ns |
| Engine clock-group WNS | +0.262 ns |
| Bus skew | 9 checks pass; minimum +6.139 ns |

All setup/hold/pulse-width checks pass. The named XSA metadata reports
SOLVER_W=18 and NSOLV=25, and its embedded bitstream matches the implementation.
Artifacts and SHA256 hashes:
../artifacts/w18_n25/manifest.json
XSA: ../artifacts/w18_n25/design_1_wrapper_w18_n25.xsa
Bitstream: ../artifacts/w18_n25/design_1_wrapper_w18_n25.bit

**There are 4,555 unused LUTs but only 64 completely empty slices.**
LUTs can be unused within occupied slices; these totals alone do not show how
many fabric solvers will pack and meet timing. Measure a complete LUT-only
solver, then route the mixed design. The combined limit remains unknown.

No full-frame simulation was run. Short checks passed; the user measured
**35.543 ms (3,554,303 clocks)** at the canonical view, 25 active/built solvers,
max_iter 1000, step 18641, STATUS 0x2. Raw UART/CSV/JSON are saved here. Do not label the small 128x64 simulation as a 1080p timing.

## Short validation completed

The 25-solver 128x64 test matches the independent 18-bit integer model under
synthetic AXI backpressure. 8,192 pixel results and the complete output frame
were checked. It takes 73,883 simulation cycles for this small test view;
this is not a 1080p render prediction. The 182 changed counts relative to
27-bit are the expected width-dependent differences in this sample.

The existing fast solver-vector and stalled format-read checks also pass.
No long full-frame simulation was run for this build, as requested.

## Manual board run once the named XSA is verified

Use the named files from precision/artifacts/w18_n25 after the export helper
succeeds. In Vitis Classic, update hardware specification to the named XSA,
build the platform, use the updated precision-aware mandel.c, clean/build the
app, and explicitly select the matching named .bit in the launch configuration.
Do not import/register projects through headless tools.

Check Q4.14, minimum step 512 LSB and 25 built solvers, then select all 25,
max_iter 1000 and f at the canonical centre (-0.75,0), step 18641.
Save the f result, status and exact clocks. Sweeps/repeats are optional.
The user operates Vitis and COM5; the agent does not program the board.

After this user's measurement, the next stage is a pure-LUT solver synthesis
and a hybrid solver bank. Its cost and maximum useful total count are not known.


## Next stage authorized by the user

Measure a complete zero-DSP LUT solver, then attempt additional fabric lanes on the measured 25-DSP-backed-solver base. Choose a candidate count from its actual cost and verify physical packing/timing. User continues all Vitis/board runs. Do not claim the raw free-LUT count proves any extra lane count will fit.
