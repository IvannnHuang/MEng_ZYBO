# 18-bit / eight-solver result

Hardware: Q4.14, 100 MHz, shared classifier enabled. Routed: 28/80 DSPs,
7,740/17,600 LUTs, 11,169/35,200 registers, 11/60 BRAM tiles, 3,268/4,400 slices.
Overall WNS +0.479 ns, hold +0.020 ns; engine clock-group WNS +1.306 ns.
Nine CDC bus-skew constraints pass; minimum slack +6.282 ns.

Full 1080p ideal-AXI RTL simulation: **9,352,126 cycles = 93.52126 ms**.
This is **not a board timing**. Resolution, reference centre, step, max_iter and
solver count are in benchmark_w18_n8.json.

Validation passed: 2,048 vectors at each of 27/24/21/18 bits with input/output
stalls; reduced 128x64 frame exactly matches the 18-bit integer oracle under
AXI backpressure; 27/24/18-bit format-register reads remain stable while stalled;
full-frame completeness/AXI checks count 2,073,600 pixels, 777,600 data beats and
48,600 bursts. The full-frame run is a completion/protocol benchmark, not a
per-pixel full-frame golden comparison.

On the reduced view: 182 changed counts,
52 changed palette pixels and
7 changed max-iteration classifications
out of 8,192 compared with Q4.23. This sample does not generalize to other views.

Verified, frozen board files and SHA256 hashes:
[../artifacts/w18_n8/manifest.json](../artifacts/w18_n8/manifest.json).
User-run steps and the larger-solver roadmap:
[../../NEXT_DSP_EXPERIMENTS.md](../../NEXT_DSP_EXPERIMENTS.md).

**Board result: 93.522 ms**, canonical view, eight active/built solvers.
The user's f / r / r / r counters are 9,352,159 / 9,352,159 / 9,352,158 /
9,352,158: 32-33 clocks above the ideal-AXI simulation. The 1..8 active-solver
sweep, raw measurement lines and exact counters are saved in board_results.json,
board_results.csv and board_uart_excerpt.txt. The capture omits the precision
banner; the user identifies this as the newly loaded 18-bit hardware.
Visual/zoom assessment remains pending. Keep 27-bit and 24-bit datasets intact.
