# Mandelbrot next steps - 2026-11-10

**STATUS: hardware testing, synthesis and board runs are ON HOLD at the user's request.**
This is a plan for later. Overclocking has not been attempted.
Read [the progress record](MANDELBROT_PROGRESS_2026-11-10.md) for completed work.
MEng_ZYBO stays on working branches; website changes may be pushed to its main.
The user handles Vitis Classic and COM5. Preserve their existing GUI workspace.

## 1. Keep the working baseline

27 solvers = 25 DSP-backed + two LUT-backed, 18-bit Q4.14, shared test enabled.
100 MHz, 1920x1080, max_iter 1000, centre (-0.75,0), zoom 1, step 18641.
Measured f: **3,389,695 clocks = 33.89695 ms**, displayed **33.897 ms**, STATUS 0x2.
79 DSPs, 15,366 LUTs, 16,393 FFs, 11 BRAM; all 4,400 slices occupied.
Setup/hold +0.017/+0.026 ns; nine bus-skew constraints pass.

Baseline branch solver-hybrid18, measured checkpoint 258e5f4.
Checkout C:/Users/zk67/zybo-hybrid18. Frozen named XSA/.bit and manifest:
Lab2_Workstation/precision/artifacts/w18_d25_l2/.
Do not overwrite these artifacts. No workspace imports, agent Vitis rebuilds,
or agent board programming. No new experiment is authorized by this plan alone.

## 2. Next experiment when the user resumes: higher engine clock

Keep solver count, number width, classifier, max_iter, frame and view fixed.
Create an isolated working branch/worktree from the saved mixed baseline, e.g.
solver-hybrid18-clock. Change clock frequency separately from extra solvers.

1. Inspect the block design's clock nets and PS FCLK0 configuration. The engine
   uses the AXI clock; FCLK0 may also drive other logic. Record every domain
   affected before changing it. Preserve DDR controller and HDMI pixel-clock
   configuration unless a separate experiment explicitly needs a change.
2. Try one small step first, for example a requested 102 MHz. 105 MHz is a later
   candidate only if the preceding configuration closes timing. These are ideas,
   not tested/supported frequency claims. The current 100 MHz design has only
   0.017 ns setup margin, so even the first step may fail without more changes.
3. Make a dedicated clock-build helper later. Existing build_precision.tcl
   selects count/width/fabric lanes; it does not implement this frequency sweep.
   Update PS clock generation, block-design/interface clock metadata and timing
   constraints consistently. Use the actual generated clock, not just the request.
4. Run synthesis/implementation and inspect full-system setup, hold, pulse-width,
   bus-skew, route status and resource totals. Keep failed results separately.
   A generated .bit alone does not show timing passed. A failed target is useful
   limit data and must not be presented as a timing-closed benchmark.
5. If a path fails, record its source/destination and delay breakdown. Consider
   focused control/pipeline/placement changes as a separate documented step.
   Do not lower solver precision or count silently to make a clock point pass.
6. Freeze a uniquely named XSA/.bit plus reports and actual frequency, e.g.
   w18_d25_l2_f102mhz only if 102 MHz is actually generated. Verify embedded
   bitstream, parameters, mapping and hashes. Commit/push the experiment branch.
7. Prepare the experiment's software timing conversion. The current mandel.c
   has IP_CLK_HZ = 100000000.0; it must match the new actual engine frequency.
   Use milliseconds = cycles * 1000 / actual_engine_hz. Include the actual clock
   in the UART banner and saved record. Preserve the 100 MHz application/baseline.
8. The user updates hardware in Vitis and builds/runs it themselves. PS-generated
   FCLK also requires matching PS initialization from the new hardware/platform;
   selecting a new PL bitstream alone may leave the old PS clock configuration.
9. Collect one canonical f result showing 27 of 27, actual clock, exact cycles,
   ms, STATUS and visual behavior. No full solver sweep is required. Additional
   correctness checks should target real changes; avoid repeated long simulations.

### Clock scaling illustration, not board results

If the cycle count stayed exactly 3,389,695:

| Actual engine MHz | Arithmetic estimate ms | Status |
|---|---:|---|
| 100 | 33.89695 | Measured baseline |
| 102 | 33.23230 | Illustration only; unbuilt |
| 105 | 32.28281 | Illustration only; unbuilt |
| 110 | 30.81541 | Illustration only; unbuilt |

AXI/DDR clock ratios and stalls can change cycles. Do not label these divisions
as measured renders. Report cycles and milliseconds together. A higher clock
may help less than the ideal scaling above; the experiment will characterize it.

### Record one row per attempted clock

Branch/commit; requested and actual MHz; width; native/fabric/active solver counts;
view/step/max_iter; cycles; measured ms; DSP/LUT/FF/BRAM/occupied slices;
setup/hold/pulse-width/bus-skew; route status; critical path; software IP_CLK_HZ;
XSA/.bit hashes; board STATUS/image behavior; accepted or failed, with reason.
Keep original 27-, 24- and 18-bit datasets and all 100 MHz milestones.

## 3. LUT-only reference study (later, separate from clock changes)

Existing complete fabric solver: 1,251 Slice LUTs, 417 FFs, zero DSPs, three
18x18 products. 1,561 LUT primitives is another counting metric.
Derived average extra area per product: (1,251-310)/3 = about 314 Slice LUTs.
Standalone multiplier cost is not yet measured. Two squares and one cross-product
can map differently. A small standalone study could measure them separately
at the same width, latency and clock constraints; do not run it now.

Area-only replacement-bank estimates: about 56 product-equivalents without
any overhead, 14 complete solvers with no support logic, about nine fabric
solvers with today's support and four DSPs still in the classifier, or about
ten in a strict-zero-DSP sketch which removes that shortcut. A LUT-built
classifier retaining the shortcut needs its own cost study. No full LUT-only
renderer is built, and no practical count is proven by these estimates.

Future alternatives: use the last DSP for one product of a partly fabric lane,
or see whether a third fully fabric lane packs alongside the 25 native lanes.
The current design occupies every slice even though 2,234 LUTs are unused.
Route/timing/throughput, rather than a LUT subtraction, must decide feasibility.

## 4. Memory and teaching follow-ups

- Profile dispatch idle time, row-window blockage, AXI AW/W stalls and response
  waits before deciding whether memory changes would accelerate rendering.
- Double/triple buffering may improve frame presentation. Cache completed views
  or pre-render animations to reuse computation. Capacity and bandwidth differ;
  merely allocating more of the 1 GiB DDR does not speed up new pixel arithmetic.
- Compare matched boundary/deep-zoom images at 27/24/18 bits. Width reduces
  numerical precision; all current modes still output 1920x1080 pixels.
- Amber's Lab 1 idea: explain the C program, identify initialization and useful
  operations, and create documented functions students can call. Agree C helpers
  versus C++ classes first. This is future teaching work, not implemented now.
- Save a chip-view picture for each completed milestone when useful, using the
  existing chip_view.tcl workflow; no GUI screenshot session is started now.

## Current session boundary

Documentation only: no new Verilog, clock settings, synthesis, simulations,
Vitis rebuilds or board runs. Resume experiments only after the user asks.
