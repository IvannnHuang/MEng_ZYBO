# Mandelbrot session record - 2026-11-10

## Board-measured results

Canonical full set: 1920x1080 RGB888, 100 MHz engine, max_iter 1000,
centre (-0.75,0), zoom 1, Q4.23 coordinate step 18641. Shared conservative
cardioid/period-2 bulb test enabled. User operates Vitis Classic and COM5.

| Solver hardware | Board ms | Exact clocks | DSP / 80 | LUT / 17,600 | FF / 35,200 | BRAM / 60 | Setup / hold ns |
|---|---:|---:|---:|---:|---:|---:|---:|
| 8 x 27-bit reference | 93.442 | 9,344,232 | 76 | 11,707 | 13,529 | 11 | +0.236 / see original report |
| 8 x 18-bit | 93.522 | 9,352,158-159 | 28 | 7,740 | 11,169 | 11 | +0.479 / +0.020 |
| 10 x 24-bit | 76.869 | 7,686,944 | 64 | 8,666 | 12,243 | 11 | +0.601 / +0.019 |
| 25 x 18-bit | **35.543** | **3,554,303** | **79** | **13,045** | **15,607** | **11** | **+0.262 / +0.024** |

The 25-solver result is about 2.63 times faster than eight solvers at the same
18-bit precision. Both captures report STATUS 0x2 and all built solvers active.
The 24-bit eight-solver 91.130 ms capture remains a shifted-view measurement;
it is not a matched canonical baseline. Preserve the original 1-8 no-classifier
curve and the separate eight-solver classifier point.

## Saved hardware

- solver-24-n10 at 6df2bae, checkout C:/Users/zk67/zybo-24-n10.
  Frozen XSA/.bit: precision/artifacts/w24_n10/.
- solver-18-n25 at 0d3043b, checkout C:/Users/zk67/zybo-18-n25.
  Frozen XSA/.bit: precision/artifacts/w18_n25/.
- In each checkout, paths above are under Lab2_Workstation.
  Manifests verify XSA parameters, embedded bitstream, routed reports and hashes.
  Raw UART/CSV/JSON are in precision/w24_n10/ and precision/w18_n25/.
- These branches are pushed. Hardware main is unchanged. The user continues
  to update the hardware specification, build the platform/app and run the board.

The updated precision-aware mandel.c is available in the experiment checkouts.
The user's GUI workspace is preserved; no headless import or programming.

## Why 25 DSP-backed solvers?

Each native 18-bit solver computes three signed 18x18 products: two squares
and one cross-product. It uses three DSP48E1s; the shared classifier uses four.
25*3+4 = 79 of 80. Another complete all-DSP lane would require 82.
DSP48E1 accepts signed 25x18 operands, but a 25x25 square does not fit that shape.
18-bit Q4.14 arithmetic keeps 1080p pixels while reducing numerical precision
and useful deep zoom. This is separate from changing output resolution.

## LUT-built solver stage

Active branch: solver-hybrid18, checkout C:/Users/zk67/zybo-hybrid18.
Complete isolated Q4.14 solver mapping:

| Product implementation | DSPs | LUT primitives | FF primitives |
|---|---:|---:|---:|
| Native DSP | 3 | 333 | 285 |
| Fabric only | 0 | 1,561 | 417 |

The fabric solver passed 2,048 independent integer-model vectors, including
input gaps and output stalls. First mixed candidate: 25 native + two fabric
= 27 solvers, unchanged arithmetic and pipeline latency. Its short 128x64 frame
matches all 8,192 independent-model counts under AXI stalls; every lane was
exercised. No repeated long full-frame simulation was run.

Attempt 1 fits: 79 DSPs, 15,611 LUTs, 16,393 registers, 11 BRAM, all 4,400 slices.
It fails setup timing at -0.618 ns (hold +0.020 ns). It is not an approved board
build and no hybrid XSA was exported. The worst path is the round-robin arbiter.
A targeted rewrite replaces arithmetic selection carry chains with parallel OR
reductions; grant order and registered stages are unchanged. The short frame
and round-robin policy checks pass. The physical retry narrowly missed at -0.077 ns; post-route AggressiveExplore
recovered timing. Final setup/hold: +0.017/+0.026 ns. Final resource use:
79 DSPs, 15,366 LUTs, 16,393 registers, 11 BRAM and all 4,400 slices.
All 30,568 routable nets are fully routed, with zero routing errors.
Nine bus-skew checks pass, minimum +5.794 ns. Each added fabric lane has
zero DSPs, verified in the physical netlist. Named hardware is pushed at 9ca5c02.

Verified mixed files: C:/Users/zk67/zybo-hybrid18/Lab2_Workstation/precision/artifacts/w18_d25_l2/
(design_1_wrapper_w18_d25_l2.xsa and matching .bit). XSA SHA256:
4198637c523551994e8a1def968fe39ea52d53a3142ebafa8a738153ce33d742.
Metadata and embedded bitstream match the verified build.

See CURRENT_EXPERIMENT.md for manual Vitis steps. No mixed-design board render
time has been measured yet. Isolated primitive counts and physical Slice LUT
counts differ; neither raw LUT headroom nor occupied slices proves an absolute
maximum. The first attempt shows how packing/routing can limit scaling before
all LUTs or registers are used.

## Remaining work

1. User loads the verified named mixed XSA/.bit in Vitis Classic and collects
   one canonical f result showing 27 of 27, max_iter 1000, clocks and STATUS.
   Hardware, resource/timing checks and pushed artifacts are complete.
2. Record that board measurement against the 25-solver 35.543 ms baseline.
   Sweeps/repeats are optional; no additional hardware build is needed now.
3. Record the best tested fit and first failing configuration; distinguish
   measured limits from a proof of an absolute maximum.
4. Later options: use the last DSP for one product in a partly fabric lane,
   try another fabric lane if packing permits, inspect stalls, and compare
   precision/boundary detail. These remain separate future experiments.
5. Preserve the DDR capacity/buffering question and Amber's Lab 1 teaching-helper
   idea as future notes; neither is implemented in this session.
