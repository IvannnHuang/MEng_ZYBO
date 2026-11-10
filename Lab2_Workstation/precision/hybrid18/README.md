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
