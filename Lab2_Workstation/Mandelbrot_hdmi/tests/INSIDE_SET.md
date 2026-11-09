# Shared inside-set classifier

Baseline: `engine-pipeline` at `9926fd7`, pushed before any optimization edits.
`baseline_engine.v` and `baseline_solver.v` are frozen copies of that RTL,
with module names changed so both versions can run together.

## Implementation

One classifier ahead of the eight solver input buffers. The eight-stage pipeline
accepts one pixel per clock when the downstream solvers have room. A full head
stalls all stages, preserving pixel coordinates and original Q4.23 values.
Four signed 18x18 multipliers compute `(cr-1/4)^2`, `ci^2`, `(cr+1)^2`,
and `q*(q+cr-1/4)`, with `q` rounded down to Q4.14.
Products have two register levels for DSP pipelining.

The classifier marks only points inside an inward margin of the main cardioid
or period-2 bulb. All other pixels use the unchanged 27-bit iteration arithmetic.
An inside pixel enters a solver ring already finished at `max_iter`, preserving
the existing arbiter, colour mapping, row accounting and AXI writer.
`max_iter=0` disables shortcut injection to retain the original count-one behavior.
Configurations with fewer than 14 fractional bits disable classification.

## Conservative arithmetic bound

Let `e=2^-14`, `u=cr-1/4`, `v=ci`, `q=u^2+v^2` and
`D=q*(q+u)-v^2/4`. A negative D identifies the main cardioid.
Classification is gated using the original input to `-1.25 <= cr <= 0.5`
and `-1 <= ci <= 1`. Coordinates are rounded down to Q4.14, with error <e.
The segment between original and rounded coordinates stays within these bounds
(the endpoints are representable), so `|u|<=1.5`, `|v|<=1`, `q<=3.25`.

On this box, `|dD/du|<=27.25` and `|dD/dv|<=16.5`. Coordinate rounding
therefore changes D by less than 43.75e. Rounding q down by <e adds at most
`(8+e)e`. Dropping two low bits in `v^2/4` lowers the right side, so it can
only reject points. The total possible underestimate of D is below 52e.
The chosen inward margin `1/128=128e` exceeds this bound.

For the bulb, `B=(cr+1)^2+ci^2` has derivative sum bounded by 5 on this
box. Its coordinate error is <5e, below the inward margin `1/512=32e`.
The test requires `B+1/512 < 1/16`.

Within the gated box q and q+u fit signed Q4.14. Outside the box the result
is discarded, including any arithmetic wrap. Original input values continue
to the solver in all cases.

This proves a conservative geometric test. It does not prove all finite-width
Mandelbrot trajectories behave identically at every possible coordinate and
iteration limit. The engine regression additionally compares actual iteration
counts and rendered bytes against the saved fixed-point implementation.

## Reproduce

From the repo root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File Lab2_Workstation/Mandelbrot_hdmi/tests/run_compare.ps1
```

The runner checks one million coordinates against exact integer inequalities,
compares 65,536 classifier RTL decisions and metadata against the model under
random stalls, then compares ten 128x64 frames against the saved engine.
Frames cover full set, deep zoom, cardioid, bulb, exterior, active-solver count
clamping, limits 0/1/17/1000, row-buffer wrap, repeated starts, and reset during
a populated pipeline. AXI address and data channels stall independently and
write responses are delayed until both address and data arrive.

Build with Vivado closed, from `Mandelbrot_hdmi/scripts`:

```powershell
& C:/Xilinx/Vivado/2024.1/bin/vivado.bat -mode batch -nojournal -log inside_set_build.log -source build_inside_set.tcl -tclargs 8 repackage
```

Reports use `*_inside_set*` names so baseline timing/utilization reports survive.
The script exports the bitstream and XSA; board render time still needs a board run.

Add `-FullFrame` to the regression command to also simulate the software default
1920x1080 view (Q4.23 step 18641, left -24186816, top 10066140,
1000 iterations, 8 solvers). This optional benchmark uses an ideal AXI sink;
its cycle count is a simulation estimate, not measured DDR/board performance.
