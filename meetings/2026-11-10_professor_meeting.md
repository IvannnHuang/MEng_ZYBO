# Meeting with professor — 2026-11-10

Topic: porting ECE 5760 Lab 2 (Mandelbrot) from the DE1-SoC to the Zybo Z7-10.

## Latest measured configuration: eight iterators + shared inside-set test

**93.442 ms on the board (9,344,232 clocks)** for the full 1920x1080 view,
max_iter 1000, 100 MHz, eight of eight Q4.23 iterators. The shared conservative
Q4.14 cardioid/bulb test adds four DSPs: total 76/80 DSPs, 11,707 LUTs,
WNS +0.236 ns. The preceding eight-iterator configuration took 399.4 ms.
This is a new algorithm/configuration result with the same iterator count.

The goal is to understand the full capabilities and tradeoffs of the Zybo
Z7-10 / Zynq-7010, not match or beat the DE1 board's render time. Keep
configuration milestones as the main progression and per-configuration active
solver sweeps as supporting evidence.

| Active solvers, latest configuration | Board ms |
|---|---:|
| 1 | 717.474 |
| 2 | 358.541 |
| 3 | 239.443 |
| 4 | 180.355 |
| 5 | 145.233 |
| 6 | 122.064 |
| 7 | 105.965 |
| 8 | **93.442** |

Detailed measurement conditions, simulation comparison, source diffs and reports:
`Lab2_Workstation/OPTIMIZATION_LOG.md` step 4. Earlier baseline observations below
remain historical; the old inside-test projections are superseded by this run.

## 1. Where we are: Mandelbrot IP v1
- Working on the Zybo Z7-10: the IP renders the full set at **1920×1080** and writes the frame **straight into DDR** (AXI master on HP0); the VDMA shows it over HDMI.
- The ARM only sets the view (centre, zoom, max_iter) and starts a render. The menu takes UART keys, board buttons, and a USB mouse (pan / click to zoom, same as the DE1 lab; USB mouse implementation now confirmed complete by the user).
- v1 = **4 solvers** (`NSOLV = 4`), Q4.23 fixed point (same as the DE1 lab), 100 MHz.
- Overview page with the register map, how to connect it, and all source: `zybo-docs/Mandelbrot_overview.html` on the website.

## 2. Correction to what I said at the first demo
- At the demo I said the IP had **1 iterator**. It actually had **4** (`NSOLV = 4` in the packaged IP).
- That explains why the Zybo render time matched the DE1 single-iterator time: the Zybo frame is about **4× the work**, and it has 4 iterators.
- Careful with the reason: 1080p is **not** 4× VGA in pixels, it's **6.75×** (2,073,600 vs 307,200). The work is only ~4× because the 1080p view frames more of the plane *outside* the set, where pixels escape in a few iterations. Fewer iterations per pixel make up for the extra pixels.

| | DE1-SoC (VGA) | Zybo Z7-10 (HDMI) |
|---|---|---|
| Resolution | 640×480 = 307,200 px | 1920×1080 = 2,073,600 px (**6.75×**) |
| Full-set view | x[−2, 1], y[−1, 1] | x[−2.88, 1.38], y[−1.2, 1.2] |
| Share of the view inside the set (1000 iterations each) | ~25 % | ~15 % |
| Avg iterations per pixel (max_iter 1000) | ~258 (inferred: 1 iterator = 794 ms at ~100 MHz) | ~152 (computed from the fixed-point model) |
| Total iterations per frame | ~7.9 × 10⁷ | ~3.2 × 10⁸ (**~4×**) |
| Iterators | 1 (baseline row of the report) | 4 |
| Render time | **794 ms** (measured, 1 iterator) | **792.2 ms** (measured 2026-11-09, 4 iterators, 79,221,584 clocks) |

- The prediction held: 4 solvers × 79.2 M clocks = 3.17 × 10⁸ solver-clocks for ~3.2 × 10⁸ iterations of work, so the solvers are busy **~99 %** of the time. On this design, render time ≈ work ÷ (solvers × clock). The only ways to go faster are more solvers, a higher clock, or less work.
- Measured speed-up on the Zybo (full 16:9 view, max_iter 1000, 100 MHz):

| Implementation | Time (ms) | Speed-up vs ARM | Speed-up vs 1 solver |
|---|---|---|---|
| ARM Cortex-A9 (Debug `-O0`) | 33,586.4 | 1.0× | — |
| FPGA, 1 solver | 3156.2 | 10.6× | 1.00× |
| FPGA, 2 solvers | 1578.2 | 21.3× | 2.00× |
| FPGA, 3 solvers | 1054.0 | 31.9× | 2.99× |
| FPGA, 4 solvers | 792.2 | **42.4×** | 3.98× |

- On the DE1 one iterator was barely faster than the HPS (794 vs 883 ms, 1.12×); here it's 10.6×. That gap is mostly our ARM code (`-O0`, `double`, no cardioid/bulb shortcuts, which the DE1 C code had). We'll re-time with `-O2` for a fair baseline.

  Almost perfectly linear, the same "time ≈ T₁ / N" rule as the DE1 report (800 ms / N there; 3156 ms / N here, because the frame is ~4× the work).
- Same region as the DE1 full set (x[−2, 1] × y[−1, 1], widened to 16:9 so pixels stay square): **1132 ms** with 4 solvers. It's slower than the 16:9 full view because the set fills more of the screen.
- The ms values are `CYCLES` ÷ 100 MHz (the IP clock, `FCLK_CLK0`), not a stopwatch.
- Region-1 view: ARM 47,950 ms vs FPGA 1132 ms (4 solvers): the same 42× as the full view.
- **Lab step 1 = one iterator**, like the original lab: students should see **≈ 3.2 s** for the full 16:9 view (≈ 4× the DE1's 794 ms, because the frame is ≈ 4× the work). That gives them a clear starting point for the parallelization steps.
- TODO: confirm the DE1 iterator clock. The ~100 MHz above is inferred from the report numbers, not read from the Quartus project.

## 3. Why the Zybo can't just copy the DE1's 24 iterators
| | DE1-SoC (Cyclone V) | Zybo Z7-10 (Zynq-7010) |
|---|---|---|
| DSP blocks | 87 | 80 |
| One 27×27 multiply costs | **1 DSP** (native 27×27 mode) | **3 DSP48E1** (they are 25×18) |
| DSPs per iterator (3 multiplies) | 3 | 9 |
| Max iterators by DSPs | 29 (report used 24) | **~8** |
| Final DE1 result | 24 iterators + 2 rectangle checks: **14.66 ms** | v1: 4 iterators |

- So on the Zybo the DSPs run out about 3–4× sooner for the same number format. Making the lab faster here means either fewer DSPs per iterator (narrower numbers, LUT multipliers, smarter math) or less work per frame (skip known regions, like the DE1 rectangles).
- Current use with 4 solvers: LUTs 66 %, registers 49 %, BRAM 30 %, DSPs 36/80, MMCMs 2/2. A lot of the LUTs and one MMCM go to the HDMI input hardware we don't use (next section).

## 4. Done Nov 9: removed the HDMI input hardware (works on the board, same render times)
| | v1 | HDMI input removed | Freed |
|---|---|---|---|
| LUTs | 11,623 (66.0 %) | **8,187 (46.5 %)** | 3,436 |
| Flip-flops | 17,152 (48.7 %) | **11,089 (31.5 %)** | 6,063 |
| BRAM tiles | 18 (30 %) | **11 (18.3 %)** | 7 |
| DSPs | 36 (45 %) | 36 (45 %) | 0 |
| Clock managers | 2 / 2 | **1 / 2** | 1 |

Done with a Vivado Tcl script (`Lab2_Workstation/Mandelbrot_hdmi/scripts/strip_hdmi_in.tcl`), so it can regenerate the student starter design. Timing still met at 100 MHz.

Presentation page with charts: `zybo-docs/Mandelbrot_meeting_2026-11-10.html` on the website.

### Background
- The Digilent base design still has the full HDMI **input** path: `dvi2rgb` (with two debug ILAs), `v_vid_in_axi4s`, `v_tc_in`, `axis_subset_converter_in`, and the VDMA write (S2MM) channel. Our software doesn't use any of it.
- Why remove it: it frees logic, BRAM, IOBs and an MMCM for more solvers, and students will ask why it's there.
- We tried this once before (Lorenz lab, attempt 1) and got no UART and no HDMI. The cause then was that the stock software still needed the input blocks. This time the app only uses the VDMA read channel, `v_tc_out` and `dynclk`. One leftover still has to be handled first: `removed_src/` is still compiled and linked.
- Idea for later (a stretch): the HDMI input could come back for a different project, e.g. a CNN on live video. Not for this lab.

## 5. Plan for making the render faster (to discuss)
Measured v1 cost (hierarchical utilization): each solver ≈ **9 DSPs, ~850 LUTs, ~530 FFs**. The HDMI-input blocks cost ~2,700–3,100 LUTs and 1 MMCM but **no DSPs**.

Order of attack, by expected gain. Measure resources and render time after every step.
1. **Strip the HDMI input**: frees LUTs/FFs/BRAM/1 MMCM, but no DSPs.
2. **Shared inside-set test: done.** A conservative Q4.14 cardioid/bulb classifier serves all eight Q4.23 solvers, using four DSPs. Measured: **93.442 ms with eight solvers**, **180.355 ms with four active solvers**. The earlier 90/45 ms projections are superseded.
3. **Eight pipelined solvers: done.** The preceding configuration took 399.4 ms; adding the shared test keeps eight built solvers and reduces work per pixel.
4. **Number width as an IP parameter**: fewer DSPs per multiply → more solvers (LUTs become the limit, ~12–15 solvers), less zoom depth.
5. **Raise the clock**: today 100 MHz meets timing with only +0.255 ns slack (worst path: the `zr × zi` multiply in a solver). Going faster needs a deeper multiply pipeline first.

### Decisions already made (2026-11-09)
- **Goal:** characterize the Zybo Z7-10 capabilities through measured configuration milestones, resource costs, precision and timing tradeoffs; active-solver curves support each configuration.
- **Benchmark:** the board's 16:9 full view, x[−2.88, 1.38] × y[−1.2, 1.2], at max_iter 1000.
- **Precision:** the number width becomes an **IP parameter**. Benchmark several widths (zoom depth vs number of iterators) so the choice can be made per course.
- **Version 1:** a label only. The current IP is "v1"; no separate frozen copy.
- **Proposed course split:** students build the **solver/iterator** and the **parallel engine** (spreading pixels across N solvers), like the DE1 lab. They also work out how to time a render, with some help. We hand them the AXI write-to-DDR path, the PS view math (centre/zoom → register values), and the USB mouse driver.

## 6. Questions for the professor
- Agree with the 16:9 view as the benchmark, or should we also report the DE1 view x[−2, 1] × y[−1, 1] for a direct comparison?
- Which number widths are worth offering students (Q4.23 like the DE1, or narrower for more iterators)?
- Does the proposed split (students: solver + parallel engine + timing; given: AXI path, view math, mouse) match what you want the lab to teach?
- Keep 1080p, or offer a lower resolution so the lab maps more directly onto the DE1 version?

## Reference discovery and next experiment

USB mouse pan/zoom is complete (user confirmed). Keep the existing board results
as the baseline; next measure solver precision versus resources, image fidelity
and zoom depth on this Zybo. See `Lab2_Workstation/REFERENCES_AND_OPTIMIZATION_IDEAS.md`
for the Reddit-discovered lecture link and the reviewed Cornell lab/background.


## Next DSP experiments and the DDR question (2026-11-09)

18-bit / eight-solvers hardware is built in the separate zybo-native18 checkout and measured by the user at **93.522 ms**, canonical view, using 28/80 DSPs. The repeat spread is one clock. The exact 18-bit board steps, 12 x 24-bit build commands, resource overhead and gradual scaling plan are in Lab2_Workstation/NEXT_DSP_EXPERIMENTS.md. The DDR capacity/caching/double-buffer question is recorded in Lab2_Workstation/REFERENCES_AND_OPTIMIZATION_IDEAS.md. The user runs the board on COM5; do not modify or import the Vitis workspace from headless tools.


## Presentation stop point and next work

Testing is on hold at the user's request. The measured 18-bit result is 93.522 ms with eight solver pipelines, each containing three 18x18 products (24 solver DSPs + 4 shared-test DSPs). Next: compare 10/12 solvers at 24 bits and gradually scale 18-bit solvers; then measure a LUT-only solver and add fabric lanes after the useful DSP-backed limit. Native 25x18 products fit a DSP, but a 25-bit square is 25x25. A precise DSP-plus-LUT iterator ceiling remains to be measured. Full plan, overhead worksheet and illustrative LUT limits: Lab2_Workstation/NEXT_DSP_EXPERIMENTS.md. No pushes to main; hardware and website changes stay on their named working branches.


## Precision versus display resolution - end-of-session clarification

All 27/24/18-bit variants still produce 1920x1080 RGB888 frames. Smaller products reduce solver fractional precision from 23 to 20 to 14 bits; they can alter boundary detail and colour bands and limit useful zoom. The user's visual observation is plausible but matched-view zoom screenshots remain future work. The complete session summary is Lab2_Workstation/SESSION_SUMMARY_2026-11-09.md, with exact build/overhead steps in NEXT_DSP_EXPERIMENTS.md. Both are downloadable from the website draft's zybo.html. Further lab testing stays on hold and all commits stay on working branches.


## Nov 10 follow-up: ten 24-bit solvers ready, shorter remaining plan

Built in a separate checkout/branch, preserving the Vitis workspace:
64 DSPs, 8,666 LUTs, 12,243 FFs, 11 BRAM tiles; overall setup +0.601 ns.
Full-frame ideal-AXI simulation passed at 76.86912 ms. The user then measured **76.869 ms** on the canonical full-set view:
7,686,944 clocks, only 32 clocks above simulation. Only solver count changed; Q4.20 and 100 MHz stay fixed.

The user will run Vitis Classic and report the render time. Next, skip the
intermediate configurations and attempt 25 x 18-bit (79/80 DSP budget), then
LUT-built multipliers/solvers to investigate maximum combined utilization.
Use targeted correctness and required resource/timing checks, with longer
simulation only when needed. CURRENT_EXPERIMENT.md holds the exact handoff.


Ten-solver board follow-up: user confirmed 10 of 10 solvers and canonical full-set render at **76.869 ms (7,686,944 clocks)**. The next authorized build is directly 25 x 18-bit, with short functional checks and final timing/resource verification, then LUT-based solvers. No intermediate twelve-solver/24-bit build is needed.


## Direct 25-solver native-width build

25 x 18-bit is routed and meets timing at 100 MHz: **79/80 DSPs, 13,045 LUTs, 15,607 FFs, 11 BRAM**, setup/hold +0.262/+0.024 ns. Short model/protocol checks passed; full-frame simulation skipped as requested. User board render: **35.543 ms (3,554,303 clocks)**, canonical view, 25 of 25 solvers. The next LUT-only solver experiment must account for 4,555 free LUTs residing largely in already occupied slices (98.55% slices occupied), then measure actual hybrid packing and speed. Named verified XSA/.bit and records are on solver-18-n25. CURRENT_EXPERIMENT.md holds the handoff.
