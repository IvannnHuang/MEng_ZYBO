# LUT multiplier stage - 2026-11-10

Baseline: 25 native 18-bit solvers, measured 35.543 ms canonical full set.
The baseline uses 79/80 DSPs, 13,045/17,600 LUTs and 4,336/4,400 slices.
4,555 unused LUTs do not guarantee space for that many extra LUT primitives:
packing and routing must also fit.

First compare a complete native solver against a LUT-only solver. Keep Q4.14,
the three products, pipeline latency, saturation, handshake and shared classifier.
Verify zero DSPs for fabric products and check 2,048 independent model vectors
with input/output stalls. Then choose an extra-lane count from the measured cost
and route a mixed design at 100 MHz. No board timing is claimed before the user
loads a verified XSA and reports canonical f. Vitis remains under user control.

## Measured isolated cost and first physical candidate

Native: 3 DSP, 333 LUT primitives, 285 FF primitives.
Fabric: 0 DSP, 1,561 LUT primitives, 417 FF primitives.
Both have the same Q4.14 arithmetic and latency; fabric passed 2,048 model vectors
with input/output stalls. These primitive counts exclude SRLs and differ from
physical Slice LUT totals; use routed utilization for final comparisons.

Try 25 native + 2 fabric = 27 solvers. Three extra fabric solvers would already
exceed the raw 4,555-LUT remainder at isolated primitive cost (4,683), before
control overhead. Two is a candidate, not a guaranteed fit or global maximum.
Run a reduced engine oracle/protocol check with all 27 lanes exercised, then
synthesis/placement/routing at the unchanged 100 MHz. No long full-frame sim.

Build: build_precision.tcl -tclargs 27 18 repackage 2
Export: export_precision_snapshot.py --width 18 --solvers 27 --lut-solvers 2
Artifacts must use w18_d25_l2 names so they cannot be confused with all-DSP builds.
