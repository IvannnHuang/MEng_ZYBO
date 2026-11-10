# Mandelbrot on Zybo Z7-10 - session summary, 2026-11-09

**Status: further lab testing is on hold.** Resume only when the user asks.
The user operates Vitis and the board on COM5. Preserve the open Vitis workspace.
All work stays on working branches; do not merge or push main.

## What we achieved

- Preserved the 27-bit reference and original 1-8 solver curve.
- Removed HDMI-input hardware; pipelined dispatch/arbitration so eight solvers
  meet timing; added a shared conservative cardioid/period-2-bulb shortcut.
- Confirmed USB mouse pan and click-to-zoom are complete.
- Made solver precision selectable while keeping the coordinate interface,
  1920x1080 framebuffer and 100 MHz engine clock unchanged.
- Built/routed the 24-bit and 18-bit eight-solver variants in separate checkouts.
- The user ran the 18-bit board test: 93.522 ms, with four captures differing
  by only one clock. Saved exact counters, CSV/JSON and the active-solver sweep.
- Simplified the meeting page, added diagrams and a DSP budget calculator,
  enlarged headings, and made the documentation use the available page width.
- Recorded the DDR question, Amber's Lab 1 idea, and the DSP-plus-LUT roadmap.
- Recovered the Vitis GUI project registration after an earlier headless import
  broke its Explorer view. Do not repeat that import workflow.

## Measured configurations

Eight built solvers and the shared test are enabled in all three rows.
Area is whole-system post-route Vivado utilization, not a Vitis software size.

| Solver format | DSPs / 80 | LUTs / 17,600 | Registers / 35,200 | BRAM / 60 | Overall setup slack | Board ms |
|---|---:|---:|---:|---:|---:|---|
| 27-bit Q4.23 | 76 | 11,707 | 13,529 | 11 | +0.236 ns | 93.442, canonical view |
| 24-bit Q4.20 | 52 | 7,970 | 11,613 | 11 | +0.318 ns | 91.130, shifted view only |
| 18-bit Q4.14 | 28 | 7,740 | 11,169 | 11 | +0.479 ns | 93.522, canonical view |

Earlier milestones: four-solver v1 792.2 ms; removing HDMI input kept 792.2 ms
and freed 3,436 LUTs, 6,063 FFs and 7 BRAM tiles; eight pipelined solvers without
the shortcut measured 399.400 ms. The 27-bit shared test then gave 93.442 ms.
An earlier unpipelined eight-solver attempt failed timing and is not a validated milestone.

Do not compare the shifted 24-bit 91.130 ms directly with canonical-view times.
Its centre was (-1.0871831597, -0.4153298611). The canonical centre is (-0.75, 0),
step 18641 in Q4.23 coordinate units, zoom x1, max_iter 1000, 1920x1080.

18-bit board f/r/r/r counters: 9,352,159 / 9,352,159 / 9,352,158 / 9,352,158.
Ideal-AXI full-frame simulation: 9,352,126 clocks = 93.52126 ms.
The board adds 32-33 clocks. At eight solvers, narrowing mainly saved area;
it did not demonstrate a render-speed gain.

## Does smaller multiplication reduce resolution?

**The output stays 1920x1080: 2,073,600 pixels, RGB888.**
We changed numerical precision, not HDMI/framebuffer resolution or pixel colour depth.

The RTL keeps 27-bit raster coordinates, then truncates them at the solver input.
The solver keeps four integer/sign bits, so fractional precision becomes:

| Format | Fractional bits | Solver coordinate spacing | Minimum step in Q4.23 interface units | Nominal sampling zoom limit |
|---|---:|---:|---:|---:|
| Q4.23 | 23 | 2^-23, about 0.0000001192 | 1 | about 18,641x |
| Q4.20 | 20 | 2^-20, about 0.0000009537 | 8 | about 2,330x |
| Q4.14 | 14 | 2^-14, about 0.00006104 | 512 | about 36x |

Thus Q4.14's coordinate grid is 512 times coarser than Q4.23, and 64 times
coarser than Q4.20. The framebuffer still has every pixel. Reduced arithmetic
precision can change escape counts, colour bands and fine boundary detail.
At sufficiently deep zoom, adjacent screen coordinates can map to the same
solver coordinate; the software clamps the sampling step to avoid that condition.

These zoom figures are sampling limits, not guarantees of accurate detail.
Iteration errors may become visible sooner; effects are not a uniform downsample
or a monotonic error percentage. The 27-bit reference is not mathematical ground truth.

Saved 128x64 sample comparisons against 27-bit:

| Variant | Changed iteration counts | Changed palette pixels | Changed max_iter classifications |
|---|---:|---:|---:|
| 24-bit | 65 / 8,192 | 15 / 8,192 | 8 / 8,192 |
| 18-bit | 182 / 8,192 | 52 / 8,192 | 7 / 8,192 |

The RTL matches its own independent fixed-width model. These are differences in
one sample, not a general error rate. The user's impression of reduced detail is
plausible; matched-view, matched-zoom screenshots and boundary checks remain to be
collected before judging visual quality. No more lab tests were run after the stop request.

Evidence: mandel_engine.v parameters FW/FH, the SW/SF coordinate truncation;
mandel.c FW/FH and solver_quantum step clamp; saved precision-model comparisons.
See the linked experiment record below.

## What the solver count and DSP size mean

Eight 18-bit solvers means eight pipelines, each with zr*zr, zi*zi and zr*zi:
24 separate 18x18 products, mapped to 24 DSPs, plus four DSPs for the shared test.
Keeping eight first isolated precision from parallelism.

A Zybo DSP48E1 has signed 25x18 multiplier inputs. A 25-bit square is 25x25,
so an exact equal-width 25-bit solver does not use one DSP per product.
Mixed-width/truncated arithmetic is a possible later experiment and needs a model.

## What remains to do, in order

1. Assess 18-bit boundary detail and zoom behaviour; collect a canonical 24-bit
   f/b run. Keep every precision-labelled dataset.
2. Build 24-bit at 10, then 12 solvers: DSP estimates 64/80 and 76/80.
3. Scale 18-bit at 12, 16, 20, 24 and optionally 25 solvers: DSP estimates
   40, 52, 64, 76 and 79. Route and measure each physical configuration.
4. After the useful DSP-backed limit, measure a complete zero-DSP LUT solver.
   Add fabric-based lanes one at a time at the same arithmetic width.
   Current isolated 333-LUT solver cost excludes its DSP multipliers.
5. Find the actual combined limit from routed LUT/FF/BRAM use, timing, stalls
   and board throughput. The handoff contains an illustrative LUT-capacity
   worksheet; it does not claim an achieved maximum.
6. Profile memory/dispatch stalls before changing buffering or clock/pipeline depth.
   More occupied resources are useful only if throughput improves.

The small twelve-solver/24-bit RTL check passed before the stop request;
no twelve-solver routed hardware or hybrid DSP/LUT design has been built.

## DDR and teaching follow-ups

One RGB888 frame is 6,220,800 bytes (5.93 MiB). Four allocated buffers occupy
23.73 MiB. A bare 1 GiB could contain at most 172 such frames before program
memory and reservations. More capacity does not speed up new Mandelbrot arithmetic.
Double/triple buffering, cached views and pre-rendered animations could improve
presentation or reuse; implementation and bandwidth profiling remain future work.

Amber suggested explaining the Lab 1 C program and designing documented functions
students can call, with initialization, inputs, state and examples. Decide C helpers
versus C++ classes. This has been recorded, not implemented.

The notes also retain the Reddit-discovered Bruce Land lecture-recording link and
the reviewed V. Hunter Adams Mandelbrot lab as optimization references.

## Where everything is saved

- [Exact next-session commands and DSP/LUT plan](NEXT_DSP_EXPERIMENTS.md)
- [DDR capacity and buffering question](REFERENCES_AND_OPTIMIZATION_IDEAS.md)
- [18-bit hardware, named XSA/.bit, reports and manifest](https://github.com/IvannnHuang/MEng_ZYBO/tree/solver-native18/Lab2_Workstation/precision/artifacts/w18_n8)
- [18-bit board data and validation](https://github.com/IvannnHuang/MEng_ZYBO/tree/solver-native18/Lab2_Workstation/precision/native18)
- [Preserved 24-bit XSA](https://github.com/IvannnHuang/MEng_ZYBO/blob/solver-precision/Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/design_1_wrapper.xsa)

Hardware branches: solver-native18 and solver-precision.
Lab/meeting Markdown: shared-inside-set.
Website draft: meeting-native18-plan. Main remains unchanged.

The website's zybo.html includes download links for this summary and the complete
next-step plan. The website branch must be explicitly published later before those
changes appear on the public GitHub Pages site.
