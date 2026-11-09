# Lab 2: session log, 2026-11-09

Branch: **`strip-hdmi-in`** (made from `main` at `ca6d32e`). `main` keeps Mandelbrot IP **v1** untouched.
Meeting notes for tomorrow: [`meetings/2026-11-10_professor_meeting.md`](../meetings/2026-11-10_professor_meeting.md).

## Decisions
- v1 = the current IP (4 solvers, Q4.23, 100 MHz). The name is a label only; no frozen copy.
- Goal: the biggest speed-up curve the Z7-10 allows (table like the DE1 report's Table 1).
- Benchmark: the 16:9 full view x[−2.88, 1.38] × y[−1.2, 1.2], max_iter 1000.
- Number width becomes an IP parameter later; benchmark several widths.
- Course split: students build the **solver/iterator** and the **parallel engine**. Given to them: the AXI write-to-DDR path, the PS view math, the mouse driver. Render timing: students work it out, with some help.

## Step 0: baseline v1 (before touching anything)
- [ ] Flash v1 and press `b` at the full view, max_iter 1000:

| Solvers | FPGA render (ms) | Speed-up | Efficiency |
|---|---|---|---|
| 1 | 3156.174 | 1.00× | 100 % |
| 2 | 1578.170 | 2.00× | 100.0 % |
| 3 | 1053.991 | 2.99× | 99.8 % |
| 4 | **792.216** (79,221,584 clocks) | 3.98× | 99.6 % |
| ARM (`p`), full view | **33,586.428** (Debug build, `-O0`) | 1 solver is 10.6× faster; 4 solvers 42.4× | |
| ARM (`p`), region `1` | 47,950.381 (`-O0`) | FPGA 4 solvers on region 1: 1132.197 ms → 42.4× | |

- Clock: the IP runs on `FCLK_CLK0` = **100 MHz** (`PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ = 100.000000` in `design_1.bd`). The menu's ms = `CYCLES` ÷ 100 MHz (a constant in `mandel.c`), not a wall-clock measurement.
- Work for the full 16:9 frame, measured: 1 solver = 315.6 M clocks → **≈ 3.16 × 10⁸ iterations**.
- Region `1` (x[−2.278, 1.276] × y[−0.998, 1.000], the DE1 view widened to 16:9 with square pixels), 4 solvers: **1132.197 ms** (113,219,690 clocks).
- ARM baseline caveat: the app is a **Debug (`-O0`)** build, so 47.95 s is pessimistic. Re-time `p` with an `-O2` (Release) build for a fair HPS row.
- **Lab step 1 is a single iterator** (like the original lab). Expected student result at the full view: **≈ 3.2 s** (the 1-solver row). Any 1-iteration-per-clock iterator at 100 MHz lands here; 2 clocks per iteration → ≈ 6.3 s.

- 4-solver result (2026-11-09): view x[−2.8833, 1.3811] × y[−1.1978, 1.2000], step 18641 LSB, max_iter 1000 → **792.216 ms**. Expected work ≈ 3.2 × 10⁸ iterations; 4 × 79.2 M clocks = 3.17 × 10⁸ solver-clocks → solvers ~99 % busy.
- [x] Hierarchical utilization of v1 → [`util_v1_hier.rpt`](util_v1_hier.rpt). Commands are in [`vivado-tcl-notes.md`](vivado-tcl-notes.md).

### Resource breakdown (v1, xc7z010: 17,600 LUT · 35,200 FF · 60 BRAM36 · 80 DSP)
| Block | LUTs | FFs | BRAM36/18 | DSP |
|---|---|---|---|---|
| Mandelbrot IP (4 solvers) | 3,960 | 2,947 | 4/0 | 36 |
| ↳ each solver | ~800–890 | ~530 | 0 | 9 (3 + 6 shown under `engine_i`*) |
| ↳ engine itself | 505 | 609 | 4/0 | (24*) |
| axi_vdma_0 (read + write) | 2,662 | 4,259 | 6/4 | 0 |
| **v_tc_in** (HDMI in) | 1,133 | 2,672 | 0 | 0 |
| axi_interconnect_hp0 (3 slave ports) | 1,121 | 2,097 | 0 | 0 |
| v_tc_out | 954 | 2,597 | 0 | 0 |
| axi_interconnect_gp0 | 607 | 657 | 0 | 0 |
| **dvi2rgb_0** (HDMI in) | 413 | 466 | 0 | 0 |
| **v_vid_in_axi4s_0** (HDMI in) | 82 | 315 | 3/0 | 0 |
| **axi_gpio_video** (HDMI in) | 60 | 87 | 0 | 0 |
| rest (dynclk, rgb2dvi, vid_out, resets) | ~633 | ~1,055 | 3/0 | 0 |
| **Total** | **11,623 (66 %)** | **17,152 (49 %)** | **16/4** | **36 (45 %)** |

\*Synthesis split each 27×27 multiply across the solver/engine boundary. 36 DSPs ÷ 4 solvers = 9 per solver (3 per multiply).

- `dvi2rgb`'s debug ILAs are **not** active (0 BRAM). Correction to the earlier note.
- Removing HDMI input should free about **2,700–3,100 LUTs, 5,500–6,000 FFs, ~6 BRAM36, 1 MMCM**: the bold blocks, plus about half the VDMA and one HP0/two GP0 interconnect ports. **No DSPs.**

### How far can it grow? (estimates, to verify step by step)
- **DSP limit at Q4.23:** 80 ÷ 9 = **8 solvers** → ≈ 3156 ÷ 8 ≈ **395 ms** full view.
- **LUT limit** after the strip: ~8,500–9,000 free LUTs ÷ ~900 per solver ≈ 9 more solvers. LUTs only become the limit if each multiply uses fewer DSPs (narrower width parameter) → roughly 12–15 solvers.
- **Biggest single win: skip the inside of the set.** ~97 % of the frame's work is inside-the-set pixels running to max_iter, and the main cardioid + period-2 bulb are ~91 % of the set's area. Test each pixel **once in the dispenser** (exact cardioid/bulb formulas, ~5 multiplies, shared by all solvers) instead of per iterator as on the DE1. Estimated work: ~3.2 × 10⁸ → ~4 × 10⁷ iterations ≈ **~90 ms with 4 solvers, ~45 ms with 8**.
- **Clock: no headroom.** `timing_v1.rpt`: the IP's 100 MHz clock has WNS **+0.255 ns** (max ≈ 102 MHz). The worst path is the `zr × zi` multiply inside a solver (13 logic levels). A faster clock needs a deeper multiply pipeline (`ML` 2 → 3+), which costs registers but not throughput.

## Progress
- [x] **Step 1:** `removed_src` excluded in `Zybo-Z7-10-HDMI/.cproject` (`excluding="_ide|removed_src"`, Debug + Release). Proven by re-linking without `video_capture.o`/`intc.o`: links fine, 10 KB smaller. **Close Vitis before rebuilding**, or it may write its in-memory `.cproject` back and undo this.
- [x] **Constraints:** HDMI RX lines in `Zybo-Z7-Master.xdc` commented out (lines 69–81), not deleted.
- [x] **Step 2 edit:** `scripts/strip_hdmi_in.tcl` (edit-only run) → validated and saved. Result: 14 cells left; `M00_AXI` → `hp0/S01` on FCLK0; `gp0` M00 VDMA, M01 dynclk, M02 v_tc_out, M03 Mandelbrot; xlconcat In0 VDMA irq, In1 v_tc_out irq → `IRQ_F2P`; FCLK_CLK2 off; addresses unchanged.
- [x] **Step 2 build** (`-tclargs build`, 16:41 → 16:45): implemented, timing met, XSA written to `Zybo-Z7-HW/design_1_wrapper.xsa`. Reports: `util_stripped.rpt`, `util_stripped_hier.rpt`, `timing_stripped.rpt`.
- [x] **Step 3: works on the board.** HDMI picture OK; `b` times identical to v1 (3156.174 / 1578.170 / 1053.991 / 792.216 ms). USB mouse now enumerates at boot (menu shows "re-detect USB mouse"), so the TT port-number fix worked; pan/zoom feel still to confirm.
- Block diagram after the strip: `design_1_stripped.svg` (exported with `scripts/export_bd_svg.tcl`; `write_bd_layout` needs Vivado's GUI, so the script opens it briefly and exits).
- Per-block LUTs now: Mandelbrot IP 3,958 (48 % of used logic), VDMA 2,662 → 1,096 (write half gone), HP0 interconnect 1,121 → 1,005, GP0 interconnect 607 → 558, v_tc_out 955.
  - Platform build after *Update Hardware Specification* failed with the old `(ildcard` error (+ a follow-on `cannot find -lrsa` in the FSBL). **Root cause is in the IP itself:** `ip_repo/.../drivers/mandelbrot_driver_v1_0/src/Makefile` line 13 had `LIBSOURCES=($wildcard *.c)` (Vivado IP-wizard template typo), and every XSA export copies it downstream.
  - **Permanent fix:** ran `Convert-VitisMakefiles.ps1 -NoBackup` on the `ip_repo` IP, the `.gen` copy, and the workspace platform (`design_1_wrapper`). Future exports are clean. Verified: the app BSP builds from the command line.

### Result: HDMI input removed
| | v1 | Stripped | Freed |
|---|---|---|---|
| LUTs | 11,623 (66.0 %) | **8,187 (46.5 %)** | 3,436 |
| Registers | 17,152 (48.7 %) | **11,089 (31.5 %)** | 6,063 |
| BRAM tiles | 18 (30.0 %) | **11 (18.3 %)** | 7 |
| DSPs | 36 (45 %) | 36 (45 %) | 0 |
| MMCMs | 2 / 2 | **1 / 2** | 1 |
| Bonded IOBs | 29 | 18 | 11 |
| WNS, IP clock (100 MHz) | +0.255 ns | +0.223 ns | |

Freed more than estimated. ~9,400 LUTs are now free (~10 more iterators by LUTs), but DSPs still cap the design at 8 iterators at 27-bit width.

## Step 1: software first (this is what killed the Lorenz attempt 1)
- The app only uses the VDMA **read** channel, `v_tc_out` and `axi_dynclk`. No `XGpio`, no interrupts, no `v_tc_in`.
- [ ] `removed_src/` (`video_capture.c`, `intc.c`) is **still compiled and linked**. Exclude it from the build, or delete it (it's in git history), and confirm the app still builds against the *current* hardware before changing any hardware.

## Step 2: block design edits
Delete:
| Block / port | Why it's safe |
|---|---|
| `dvi2rgb_0` | HDMI receiver (+2 debug ILAs, an MMCM, the RX IOBs) |
| `v_vid_in_axi4s_0`, `axis_subset_converter_in` | input video → AXI stream |
| `v_tc_in` | input timing detector (`gp0/M02`) |
| `proc_sys_reset_0` | only resets the RX pixel-clock domain |
| `axi_gpio_video` | only RX hot-plug + pixel-lock (`gp0/M04`); software doesn't use it |
| ports `hdmi_in`, `hdmi_in_ddc`, `hdmi_in_hpd` | RX pins |

Re-configure:
| Block | Change | Watch out |
|---|---|---|
| `axi_vdma_0` | turn off the write channel (S2MM) | read channel (MM2S) must stay |
| `axi_interconnect_hp0` | `NUM_SI` 3 → 2; IP's `M00_AXI` moves to **S01** | **S01_ACLK → FCLK_CLK0, S01_ARESETN → proc_sys_reset_fclk0/peripheral_aresetn** (they were on FCLK1). Missing this = Lorenz issue I-09 |
| `axi_interconnect_gp0` | `NUM_MI` 6 → 4: M00 VDMA, **M01 `axi_dynclk` (keep!)**, M02 `v_tc_out`, M03 Mandelbrot IP | wire clocks/resets for the renumbered ports; keep the IP at `0x43C1_0000` |
| `xlconcat_0` | `NUM_PORTS` 5 → 2: In0 VDMA MM2S irq, In1 `v_tc_out` irq | |
| `processing_system7_0` | disable FCLK_CLK2 (200 MHz, only fed `dvi2rgb`) | keep FCLK0 (100 MHz) and FCLK1 (133 MHz, VDMA/HP0) |
| `Zybo-Z7-Master.xdc` | comment out the `hdmi_in_*` lines (≈ lines 70–79) | keep `hdmi_out_*` |

Then: validate → synthesis → implementation → check timing (WNS ≥ 0) → export XSA **with bitstream**.

## Step 3: Vitis and board check
- [ ] Update the platform from the new XSA, rebuild, and re-run `Convert-VitisMakefiles.ps1` if the BSP Makefile typo comes back.
- [ ] Rebuild the app, run it: HDMI picture, menu, `b` times must match step 0.

## Step 4: record the win
| | v1 (with HDMI in) | v1 stripped |
|---|---|---|
| LUTs | 11,623 (66.0 %) | |
| Registers | 17,152 (48.7 %) | |
| BRAM tiles | 18 (30 %) | |
| DSPs | 36 (45 %) | |
| MMCMs | 2 / 2 | |
| Bonded IOBs | 29 | |
| WNS | | |

## After this: speed-up work (plan, re-ordered by expected gain)
1. **Shared cardioid + period-2-bulb test in the dispenser**: est. ~8× (792 → ~90 ms at 4 solvers). The DE1's rectangle version gave 43 → 19.5 → 14.66 ms; ours can use the exact formulas because it's one shared unit, not one per iterator.
2. More solvers up to the DSP limit (8 at Q4.23): ~2×. Speed-up table for 1..N.
3. Width as an IP parameter: fewer DSPs per multiply → more solvers, less zoom.
4. Clock above 100 MHz if WNS allows.
