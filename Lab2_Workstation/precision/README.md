# Solver precision experiment (eight iterators fixed)

Reference board configuration: 27-bit Q4.23 solvers + shared conservative
inside-set test, 93.442 ms, 76 DSPs, 11,707 LUTs, WNS +0.236 ns at 100 MHz.
Saved branch: `shared-inside-set`, checkpoint `aa8c828`.
Experiment branch/worktree: `solver-precision`, `C:/Users/zk67/zybo-precision`.
The workstation project open in Vitis is not switched or overwritten.

## What changes

`SOLVER_W` is a synthesis/IP parameter from 18 to 27 (default 27).
Eight solvers remain built. Each has four integer/sign bits and SOLVER_W-4
fractional bits. `mandel_engine.SW` selects the same precision.
Coordinates, view accumulation, AXI-Lite registers and the shared classifier
retain Q4.23; coordinates are rounded down at each solver input boundary.
The classifier uses the original coordinates with its existing conservative
Q4.14 arithmetic, independent of the selected solver precision.

New read-only register 0x28 returns `{16'h4d42, fractional_bits[7:0], total_bits[7:0]}`.
For 24 bits it is 0x4d421418; for 27 bits it is 0x4d42171b.
The modified PS source reads this signature, reports the format, and prevents
zooming below one solver LSB. Old bitstreams return zero here and retain
27-bit defaults. The coordinate register format and 100 MHz clock are unchanged.
Full-view quantized step remains 18641; it is not rounded to a new grid.

## Actual isolated-solver synthesis, Vivado 2024.1, xc7z010clg400-1

| Total bits | Fractional bits | DSPs | LUT primitives | FF primitives |
|---|---:|---:|---:|---:|
| 27 | 23 | 9 | 979 | 573 |
| 24 | 20 | 6 | 411 | 339 |
| 21 | 17 | 3 | 774 | 462 |
| 18 | 14 | 3 | 333 | 285 |

These are out-of-context synthesis figures, not whole-system routed results.
The 21-bit implementation spends more LUTs while saving DSPs; three DSPs for
its three products does not mean a native 21x21 multiplier exists in DSP48E1.
Choose 24-bit first to isolate a moderate precision change: it saves three DSPs
per solver while retaining 20 fractional bits. Clock and iterator count stay fixed.
Only later measure more iterators; do not infer a speed improvement from area alone.

## Accuracy and zoom are part of the result

The independently modeled 128x64 test view differs from 27-bit at 65 iteration
counts, 15 palette pixels, and 8 pixels that reach max_iter rather than escape
(or vice versa), out of 8192. These finite-precision trajectories are expected
to differ; this configuration is not byte-equivalent to the board baseline.
Its RTL exactly matches the independent 24-bit integer model for that frame.
With random AXI stalls the frame took 88,975 cycles versus 88,684 at 27 bits.
That comparison is a reduced-size simulation, not board performance.

On a separate 2048-point sample deliberately mixing full-view, deep-boundary
and broad-range coordinates, changed iteration counts versus 27-bit were:
24-bit 152, 21-bit 243, 18-bit 402. This is not a population-wide error rate.
All four solver RTL instances matched their own-width integer models under
input gaps and output stalls.

The software sampling-step limits in the unchanged Q4.23 register units are
1 / 8 / 64 / 512 for solver widths 27 / 24 / 21 / 18. From the default full-view
step of 18641, the nominal maximum zoom factors are approximately 18641x /
2330x / 291x / 36x. These are coordinate-sampling limits, not guarantees of
accurate boundary detail: numerical errors can become visible earlier.

## Reproduce

From the worktree root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File Lab2_Workstation/Mandelbrot_hdmi/tests/run_precision.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File Lab2_Workstation/Mandelbrot_hdmi/tests/run_compare.ps1
```

Add `-FullFrame` to `run_precision.ps1` for the optional 1080p ideal-AXI benchmark.
The existing baseline regression uses default SW=27; it is expected to retain
all prior output bytes/counts. The new register test checks both format values
and stability while an AXI read response is stalled.

From `Lab2_Workstation/Mandelbrot_hdmi/scripts`:

```powershell
& C:/Xilinx/Vivado/2024.1/bin/vivado.bat -mode batch -nojournal -log precision_sweep.log -source sweep_solver_precision.tcl
& C:/Xilinx/Vivado/2024.1/bin/vivado.bat -mode batch -nojournal -log precision_w24_build.log -source build_precision.tcl -tclargs 8 24 repackage
```

Configuration reports use the `precision_w24_n8` tag. The worktree XSA is
`Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/design_1_wrapper.xsa`.
Do not use the workstation branch's same-named XSA for this experiment.

## Board step still required

Use a separate Vitis workspace for the experiment (the checkout contains
copied IDE metadata whose paths may still name the original workspace).
Create/update a platform from the precision worktree XSA and import a copy of
the application's source from the precision worktree, including its updated
`src/mandel/mandel.c`. Build and program the board. The UART should report Q4.20,
24 bits, minimum step 8 LSB, and eight built solvers. Run `f`, `b`, boundary
views and mouse pan/zoom. Record the board time as a new precision-labeled
configuration. Keep 93.442 ms as the 27-bit board reference until then.

## Routed 24-bit / eight-iterator system

Vivado 2024.1 completed implementation and bitstream generation; XSA exported.

| Metric | 27-bit board reference build | 24-bit experiment build |
|---|---:|---:|
| Built iterators | 8 | 8 |
| Shared inside-set test | enabled | enabled |
| DSPs | 76 / 80 | 52 / 80 |
| Slice LUTs | 11,707 | 7,970 |
| Slice registers | 13,529 | 11,613 |
| BRAM tiles | 11 | 11 |
| WNS at 100 MHz | +0.236 ns | +0.318 ns |
| Worst overall hold slack | +0.024 ns | +0.019 ns |
| Board full-view time | 93.442 ms | pending |

The fixed-eight experiment saves 24 DSPs and 3,737 LUTs. All ordinary setup,
hold and pulse-width checks pass. See `bus_skew_precision_w24_n8.rpt` for the
separate CDC check. Arithmetic precision, not pipeline clock or iterator count,
is the changed performance variable. No claim of a faster board render is made.

CDC bus-skew report: 9 constraints, minimum slack +6.098 ns.

Full 1920x1080 default-view RTL benchmark passed: **9,347,473 cycles = 93.47473 ms**
at 100 MHz with an ideal AXI sink. The 27-bit ideal-AXI reference was 9,344,200
cycles (93.442 ms): at eight solvers the lower precision saves resources and
slightly changes numerical work; it does not improve this simulated render time.
The full-frame check counted 2,073,600 results, 777,600 data beats and 48,600 bursts.
A new board time and visual/zoom validation remain pending.
