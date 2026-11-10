# Next DSP experiments - handoff (2026-11-09)

## Current update: 2026-11-10

This update supersedes the older ON HOLD status and gradual sweep below.
The user chose fewer builds: 10 x 24-bit, then directly 25 x 18-bit, then
additional LUT-based solvers. The user continues all Vitis and board runs.

| Completed configuration | Canonical board f | DSPs | Routed LUTs | Setup slack |
|---|---:|---:|---:|---:|
| 10 x 24-bit, solver-24-n10 at 6df2bae | 76.869 ms | 64 | 8,666 | +0.601 ns |
| 25 x 18-bit, solver-18-n25 at 0d3043b | 35.543 ms | 79 | 13,045 | +0.262 ns |

Both named XSA/.bit pairs, routed reports and raw board measurements are pushed
on their respective branches. Hardware main remains unchanged.

The active LUT experiment is in C:/Users/zk67/zybo-hybrid18 on solver-hybrid18.
A complete zero-DSP solver costs 1,561 LUT primitives / 417 FF in isolated
synthesis; the native solver costs 333 LUT primitives / 285 FF / three DSPs.
The fabric implementation passed 2,048 independent model vectors with stalls.
The 27-lane mixed candidate (25 native + two fabric) passed a reduced engine
oracle/protocol check, including coverage of every lane. Physical fit/timing
is being checked; a working mixed-design limit has not yet been established.

See CURRENT_EXPERIMENT.md for the current status. Keep Q4.14 and 100 MHz fixed.
Do not repeat long full-frame simulation unless a failure justifies it.
If the candidate fails placement or timing, record why and reduce the fabric
count or revise multiplier pipelining before exporting a verified XSA.

## Historical handoff

**Update 2026-11-10:** the user resumed ten solvers at 24 bits. That hardware
is now ready for their Vitis/COM5 run; see [CURRENT_EXPERIMENT.md](CURRENT_EXPERIMENT.md).
The remaining sequence is now **10 x 24-bit -> 25 x 18-bit -> DSP plus LUT solvers**.
Skip twelve-solvers/24-bit and intermediate 18-bit builds unless a failure needs
a fallback. Keep validation short and targeted; no repeated long simulations
unless justified. The older detailed sequence below is historical.


**STATUS: further lab testing is ON HOLD at the user's request.**
18-bit / eight-solvers is already built and board-measured at **93.522 ms**.
The 12 x 24-bit hardware build and DSP-plus-LUT experiments below are plans only.
Do not push or merge main. Resume tests only when the user asks.


## Start here

The immediate experiment is **18-bit Q4.14, eight built solvers**, at the same
100 MHz and 1920x1080 as before. Hold solver count fixed first, then increase it.
The user programs/runs the board and supplies UART output. Do not run XSCT
imports, regenerate the user's Vitis workspace, switch its branch, or program
the board from an agent session.

- Open GUI workspace: `C:/Users/zk67/MEng_ZYBO/Lab2_Workstation/Mandelbrot_workspace_workstation`.
- Preserved 24-bit checkout: `C:/Users/zk67/zybo-precision`, branch `solver-precision`, saved build `693423a`.
- New 18-bit checkout: `C:/Users/zk67/zybo-native18`, branch `solver-native18`.
- Read `WORKSPACE_RECOVERY_2026-11-09.md` before touching IDE metadata.
- This document and the DDR question are copied to the main checkout so a new session can find them.

## Validation completed in this session

18-bit / eight-solvers: independent model and stalled register/frame tests passed.
Full 1080p ideal-AXI simulation: 9,352,126 clocks = 93.52126 ms.
This is not a board measurement. XSA metadata and embedded .bit were verified;
the frozen w18_n8 export is ready. User board data is now saved: **93.522 ms**,
9,352,158-9,352,159 clocks at the canonical view; the 1..8 sweep is recorded.
Visual/zoom validation remains pending.

## Results already known

| Configuration | DSPs | Routed LUTs | Registers | BRAM tiles | Overall WNS | Board timing |
|---|---:|---:|---:|---:|---:|---|
| 27-bit, 8 solvers + shared test | 76/80 | 11,707 | 13,529 | 11 | +0.236 ns | 93.442 ms, canonical view |
| 24-bit, 8 solvers + shared test | 52/80 | 7,970 | 11,613 | 11 | +0.318 ns | 91.130 ms, shifted view only |
| 18-bit, 8 solvers + shared test | 28/80 | 7,740 | 11,169 | 11 | +0.479 ns | 93.522 ms, canonical view |

All run at 100 MHz. These WNS values are the overall routed-system values;
the new 18-bit `clk_fpga_0` clock group has +1.306 ns WNS. Overall hold slack
is +0.020 ns. See the reports for other clocks and timing constraints.

The 24-bit 91.130 ms run was selected with `-`, centred at
(-1.0871831597, -0.4153298611). Do not substitute it for the original canonical
27-bit 93.442 ms benchmark at (-0.75, 0). Collect a matching 24-bit `f` run later.

## Run the 18-bit hardware now (user at Vitis)

Use the **frozen, explicitly named** XSA and matching bitstream after
`precision/artifacts/w18_n8/manifest.json` has been written and verified:

```text
C:\Users\zk67\zybo-native18\Lab2_Workstation\precision\artifacts\w18_n8\design_1_wrapper_w18_n8.xsa
C:\Users\zk67\zybo-native18\Lab2_Workstation\precision\artifacts\w18_n8\design_1_wrapper_w18_n8.bit
```

1. In Vitis Classic, right-click the existing **design_1_wrapper platform**,
   choose **Update Hardware Specification**, and browse to the named 18-bit XSA.
   Do this in the GUI; do not import/register projects through XSCT.
2. Build the platform. Keep the current application's source if it already
   reports solver precision. Otherwise copy only
   `src/mandel/mandel.c` from the new checkout's
   `Lab2_Workstation/Mandelbrot_workspace_workstation/Zybo-Z7-10-HDMI/`
   into the existing application's corresponding source folder.
   This driver detects 18/24/27 bits and the built solver count.
3. Refresh, clean and build the application. In its hardware launch
   configuration, explicitly select the matching **named 18-bit .bit** above.
   Confirm the launch is not taking an older cached bitstream.
4. Program/run yourself. UART is on **COM5**. Preserve the entire serial capture.
5. Verify the banner reports **Q4.14, 18 solver bits, minimum step 512 LSB**,
   and **8 built solvers**. The hardware format register at IP offset `0x28`
   should be `0x4d420e12`. If the application dump does not print this register,
   the precision banner is the normal check; do not infer precision from the filename alone.
6. Set `i` to 1000, `n` to 8, then press `f`. Verify the reference view:
   centre (-0.75, 0), zoom x1, step 18641 in the unchanged Q4.23 coordinate units.
   Expected displayed bounds: x [-2.8832931519, 1.3810709715],
   y [-1.1977552176, 1.1999773979].
7. Run `r` three times. Save clocks and milliseconds for every run.
   Then run `b` for active solvers 1..8 at that same view.
   Do not move the USB mouse during timed captures.
8. Repeat the same boundary/inside/outside views used at other precisions.
   Record the chosen centre, step and max_iter with screenshots, including
   where Q4.14 starts losing boundary detail. Sampling limit is nominally
   about 36x zoom; usable numerical accuracy can run out earlier.
9. The user has now supplied f, three r repeats and b; these are saved in the native18 dataset. For later builds, paste the UART results back. Store them under `precision/native18/`,
   label them **board measurements**, and add the separate 18-bit configuration
   to the log/website. Keep simulation times labelled as simulations.

Changing only `n` in the menu enables already-built solvers. It does **not**
create extra hardware or demonstrate area savings from synthesizing fewer solvers.

## Build/test commands for the next session

Run builds only in an isolated experiment checkout. Close Vivado for that
checkout before invoking its build script. Vitis may remain open on the
separate user's workspace; these commands do not access it.

From the 18-bit checkout root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File Lab2_Workstation/Mandelbrot_hdmi/tests/run_precision.ps1 -SolverWidth 18 -Solvers 8 -FullFrame
```

From that checkout's `Lab2_Workstation/Mandelbrot_hdmi/scripts`:

```powershell
& C:/Xilinx/Vivado/2024.1/bin/vivado.bat -mode batch -nojournal -log precision_w18_n8_build.log -source build_precision.tcl -tclargs 8 18 repackage
python export_precision_snapshot.py --width 18 --solvers 8
```

The export helper verifies XSA metadata, the matching implementation bitstream
and routed reports before writing a labelled copy and SHA256 manifest.
Reports: `Lab2_Workstation/util_precision_w18_n8.rpt`,
`util_precision_w18_n8_hier.rpt`, `timing_precision_w18_n8.rpt`,
and `bus_skew_precision_w18_n8.rpt`.

For **12 x 24-bit**, first create another isolated checkout from the saved
24-bit commit (do not rebuild/overwrite the user's current 24-bit export):

```powershell
git -C C:/Users/zk67/MEng_ZYBO worktree add -b solver-24-n12 C:/Users/zk67/zybo-24-n12 693423a
Set-Location C:/Users/zk67/zybo-24-n12/Lab2_Workstation/Mandelbrot_hdmi/scripts
& C:/Xilinx/Vivado/2024.1/bin/vivado.bat -mode batch -nojournal -log precision_w24_n12_build.log -source build_precision.tcl -tclargs 12 24 repackage
```

Before validation/export in this new checkout, bring across only the parameterized
precision test files and export helper from `solver-native18` (or copy their
files from `zybo-native18`). Do **not** merge 18-bit generated hardware/project
files into it. From the new checkout root, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File Lab2_Workstation/Mandelbrot_hdmi/tests/run_precision.ps1 -SolverWidth 24 -Solvers 12 -FullFrame
python Lab2_Workstation/Mandelbrot_hdmi/scripts/export_precision_snapshot.py --width 24 --solvers 12
```

If doing intermediate physical builds, first use `-tclargs 10 24 repackage`
and corresponding `-Solvers 10`; snapshot it before changing to twelve.
A routed twelve-solver design can also sweep active counts 1..12 with `b`,
but this keeps the twelve-solver physical resource cost.

## Increase utilization one measured step at a time

The RTL already generates `NSOLV` solver instances and parameterizes their
dispatch/arbiter connections. Change the block-design IP parameters
`CONFIG.SOLVER_W` and `CONFIG.NSOLV` through `build_precision.tcl`;
do not hand-wire a second AXI IP per solver. The 64-bit AXI writer, 8-row buffer,
shared classifier and framebuffer format remain common to all solvers.

| Width | Built solvers to test | DSP total including 4 shared-test DSPs |
|---|---|---|
| 24-bit | 8, 10, 12 | 52, 64, 76 |
| 18-bit | 8, 12, 16, 20, 24, then optionally 25 | 28, 40, 52, 64, 76, 79 |

For each new physical build: verify counts and XSA parameters, run the matching
integer-model/frame test, route, check setup/hold and bus skew, save named
XSA/.bit/reports, then measure the board at identical views and limits.
Record failed builds as failures, not validated milestones. If timing or routing
fails, stop increasing count and inspect the failing path before changing clocks,
pipeline depth, row buffering or dispatch. Keep each change a separate experiment.

### Extra logic cost / wiring overhead

Isolated solver synthesis gives first-order **planning costs**, not accurate
whole-system placement forecasts:

| Change | Extra solver DSPs | Extra isolated LUT primitives | Extra isolated FF primitives |
|---|---:|---:|---:|
| 24-bit: 8 -> 12 solvers | 24 | 4 x 411 = 1,644 | 4 x 339 = 1,356 |
| 18-bit: 8 -> 24 solvers | 48 | 16 x 333 = 5,328 | 16 x 285 = 4,560 |
| 18-bit: 8 -> 25 solvers | 51 | 17 x 333 = 5,661 | 17 x 285 = 4,845 |

Add dispatch/arbiter fan-in, buffers, control and routing to those estimates.
LUT packing can change, so do not simply add these primitive counts to routed
LUT totals and call it a measured prediction. Larger muxes, priority selection,
fan-out and output bandwidth may limit useful scaling before DSPs are full.
There is no intended per-solver full-frame DDR allocation.

With the current four-DSP classifier and three-DSP 18-bit solver, the maximum
DSP-only count is **25**, using **79/80**; the next needs 82. At 24 bits it is
**12**, using **76/80**; the next needs 82. Exactly filling all 80 is not required.
The goal is the fastest correct-enough image at a recorded precision, not a
100% utilization score. If more solvers cease helping, measure input/output
stalls, row-window blockage and AXI waits.

## Fields to capture for every result

Branch/commit; named XSA/.bit SHA256; total/fractional width; built and active
solvers; classifier setting; engine clock; resolution/stride; view/step/max_iter;
DSP/LUT/FF/BRAM/occupied slices; setup/hold/bus-skew slack; render clocks and ms;
three repeats; image/zoom observations; whether this is board or simulation.
At 100 MHz: milliseconds = clocks / 100,000.

## DDR question

See the dated question and calculations in
[REFERENCES_AND_OPTIMIZATION_IDEAS.md](REFERENCES_AND_OPTIMIZATION_IDEAS.md).


## Stop point - remaining work is planned, not running

The user asked to hold off on further testing after supplying the 18-bit board
results. Do not start additional simulations, synthesis, builds or board runs
until asked to resume. Current measured result: 18-bit Q4.14, eight solvers,
93.522 ms, 28/80 DSPs. Boundary/zoom assessment remains outstanding.

The small 24-bit/twelve-solver RTL test completed before this stop request:
128x64, max_iter 1000, 76,327 cycles with synthetic AXI stalls, exact agreement
with its 24-bit oracle (65 changed counts versus 27-bit). This is only a
functional preparation check, not a routed twelve-solver hardware result or
a full-frame/board speed measurement.

## What "eight 18-bit solvers" means

It means **eight independent Mandelbrot solver pipelines**. Each computes
three products: zr*zr, zi*zi, and zr*zi. At the selected width those are
18x18-bit products. Therefore eight solvers contain 24 solver multiplication
units, mapped to 24 DSP48E1 slices, plus four DSPs in the shared classifier.

It does not mean eight multipliers total, nor an 8-bit-by-18-bit product.
The fixed 100 MHz, solver count and pipeline structure explain why merely
narrowing arithmetic did not produce a substantial render-speed improvement.

## Why not fill every DSP with 25x18 multiplication?

We can use all 80 physical blocks for native signed 25x18 products, subject to
the rest of the design. But the lab needs a complete Mandelbrot recurrence,
not 80 unrelated products. Both z components are squared. A 25-bit value squared
is a **25x25** operation; one DSP's 18-bit input cannot accept the second full
25-bit operand. Merely selecting a 25-bit solver does not make all three
products fit one DSP each.

Possible later experiment: zr at 25 bits and zi at 18 bits, with carefully
defined binary points. The cross-product fits one DSP, but zr*zr still needs
multiple DSPs or a DSP/LUT decomposition. Truncating one operand to 18 bits is
also possible, but changes the arithmetic and needs a new integer model.
There is no promised precision or speed advantage without measuring it.

The 18x18 choice is the clean equal-width native mapping: one DSP per product.
Using only 18 of the 25 available bits on one input does not create a second
multiplier in that DSP. DSP48E1 SIMD is for the adder, not two independent
18x18 products. Hardware reference: [AMD UG479](https://docs.amd.com/api/khub/documents/gu4oRPFEh_Pm2uaAlfY6Kg/content).

## After DSP scaling: use LUTs for additional complete solvers

This is a planned follow-on experiment requested by the user, not implemented.

1. Find the highest useful routed DSP-solver count at one fixed precision:
   18-bit eight -> twelve -> sixteen -> twenty -> twenty-four -> optionally
   twenty-five. Keep each result. The current classifier plus 25 DSP-backed
   solvers costs 4 + 25*3 = **79/80 DSPs**.
2. Synthesize a **LUT-only 18-bit multiplier/solver** in isolation. Start with
   the existing arithmetic and a local USE_DSP="no" attribute on the product
   logic (or a separate fabric solver module); verify the mapped DSP count is
   zero. Do not disable DSPs globally and accidentally move the classifier or
   every existing solver into LUTs.
3. Compare an inferred fabric multiplier with an explicitly pipelined signed
   partial-product implementation. Two of the products are squares, so consider
   square symmetry separately from the general cross-product. Preserve product
   width, rounding, saturation, valid/ready behavior and pixel tags.
4. Match the fixed-width integer model and protocol checks. Record DSP=0,
   LUTs, FFs, latency, initiation interval and attainable timing for the complete
   fabric solver; the current 333-LUT isolated solver figure **excludes the
   DSP multipliers** and is not a LUT-only solver cost.
5. Add parameterized DSP-backed and fabric-backed solver banks behind the
   shared dispatcher/result arbiter. Keep **the same 18-bit numerical rules**
   in both banks; mixing 18- and 24-bit solvers can make image values depend on
   which solver receives a pixel. Do not assume the current single-bank RTL
   already selects two implementations.
6. Starting from the best measured DSP-backed base, add **one fabric solver**
   at a time. Route and measure each step. Different solver latency must be
   handled explicitly; record whether extra lanes improve pixels/second.
7. Stop expansion when setup/hold, routing, usable image precision, available
   LUTs/FFs/BRAM, dispatch/arbiter timing or memory bandwidth fails or throughput
   stops improving. Record both the last passing configuration and first
   failure. Do not require 100% LUT occupation to call the board characterized.

Vivado documents USE_DSP="no" as selecting slice-logic multiplication:
[AMD UG901, Multipliers Implementation (2024.1)](https://docs.amd.com/r/2024.1-English/ug901-vivado-synthesis/Multipliers-Implementation?contentId=5cbdtCH2CquqV5bB_n56Rg).
This instruction is a future synthesis experiment, not code applied this session.

### What LUT limit can we state now?

**No measured maximum yet.** At eight 18-bit DSP solvers, 7,740 LUTs are used,
so 9,860 remain. Adding the *isolated* logic cost of another 17 DSP-backed
solvers gives a rough 25-solver envelope:

- 7,740 + 17*333 = **13,401 LUTs**, before extra arbitration/routing/packing effects.
- Nominal remainder: 17,600 - 13,401 = **4,199 LUTs**.
- This mixes primitive OOC counts with routed LUTs for planning only; it is not
  a whole-system utilization prediction. The 25-solver DSP base itself is unbuilt.

Once that base is actually routed, use its measured LUT count instead:

extra_fabric_solvers <= floor((17600 - routed_base_LUTs - control_and_margin_LUTs)
                             / measured_incremental_LUTs_per_fabric_solver)

Also check FFs, routing, timing and throughput. Incremental cost can be nonlinear.

Illustrative sensitivity only, assuming the unverified 4,199-LUT remainder
and **zero** extra control/reserve cost:

| Hypothetical complete fabric-solver LUT cost | Extra solvers by LUT arithmetic alone | Total with 25 DSP-backed solvers |
|---:|---:|---:|
| 600 | 6 | 31 |
| 1,000 | 4 | 29 |
| 1,500 | 2 | 27 |
| 2,000 | 2 | 27 |

These are examples of how the ceiling will be calculated, **not synthesized
costs or promised achievable iterator counts**. Obtain the pure-LUT solver
cost and routed base before choosing a target. Re-run the same study at
24-bit only as a separate precision-labelled experiment.

## Branches and presentation handoff

- Push 18-bit source/configuration, routed reports, named XSA/.bit and board data
  on **solver-native18**. Confirm the named files exist in the pushed tree.
- Keep the existing 24-bit XSA on **solver-precision**; do not replace it with
  the new 18-bit build.
- Push Markdown updates on the working **shared-inside-set** branch.
- Put the presentation/plan update on the website's **meeting-native18-plan**
  branch. Do not push or merge main. Present the local HTML or branch source
  until the user explicitly chooses to publish the website branch.


## End-of-session summary and precision clarification

See [SESSION_SUMMARY_2026-11-09.md](SESSION_SUMMARY_2026-11-09.md) for the complete session record. All three variants still render 1920x1080 RGB888. Reducing solver width changes fractional arithmetic precision (23/20/14 bits), boundary detail and sampling zoom limits, not the framebuffer pixel count. The user's visual impression is plausible; matched-view zoom screenshots remain to be collected. The summary and full plan are downloadable from the website draft's zybo.html. Testing remains on hold; no main branch is pushed.


## 2026-11-10 direct 25-solver result

The 10 x 24-bit board result is complete at 76.869 ms. The direct 25 x 18-bit build now fits and meets timing: 79 DSPs, 13,045 LUTs, 15,607 FFs, 11 BRAM tiles, setup +0.262 ns. Short checks pass; no long full-frame simulation repeated. The user will measure the board. Next is a complete LUT-only solver and hybrid lanes; remaining LUTs 4,555, occupied slices 98.55%. See CURRENT_EXPERIMENT.md for exact paths and status.
