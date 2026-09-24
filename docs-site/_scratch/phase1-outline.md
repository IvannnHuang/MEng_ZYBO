# Phase 1 outline — Lorenz DDA on Zybo Z7-10 (scratch, NOT the final site)

Sources: 10 saved Claude Code transcripts (2026-09-18 → 09-22), `git log` (2026-02-28 → 09-22), and the current files in the repo.
Tags: **[chat]** = from transcripts, **[git]** = from commits/files only, **[?]** = not captured, needs your input.
Times in transcripts are UTC; Vivado logs show local (EDT = UTC-4).

---

## 1. Goal and architecture

### 1.1 Goal
Show a chaotic Lorenz attractor on HDMI, computed in the FPGA fabric (PL) by a custom AXI-Lite IP and drawn by the ARM core (PS) on a Zybo Z7-10.

### 1.2 Stock demo (Digilent `Zybo-Z7-10-HDMI`)
- PL: `processing_system7`, `axi_dynclk` (pixel clock), `axi_vdma` (framebuffer <-> AXI-Stream), `v_tc_out` + `v_axi4s_vid_out` + `rgb2dvi` (HDMI TX), and an RX path (`dvi2rgb`, `v_tc_in`, `v_vid_in_axi4s`, `axi_gpio_video`).
- PS app `video_demo.c`: UART menu (resolution, frame select, test patterns, capture/invert/scale of the HDMI input). Uses `display_ctrl`, `dynclk`, `video_capture`, `intc`, `timer_ps`.

### 1.3 What was changed (project `ivan_lorenz_hdmi`)
| Layer | Change | Why |
|---|---|---|
| PL | New custom IP `lorenz_dda_driver` (AXI-Lite slave, GP0 -> `M05_AXI`, base `0x43C30000`, 64K) | Compute the Lorenz equations in hardware |
| PL | IP core: `lorenz_solver` = 3x `integrator` + 4x `signed_mult`; 27-bit signed fixed point (1 sign + 6 int + 20 frac); one Euler step per rising edge of CTRL bit 0; `dt` is a right-shift count | Single-step solver, PS sets the pace |
| PL | Added CTRL bit 1 `load` to reload x/y/z init without a global reset | Solver could never leave (0,0,0), see I-05 |
| PL | Rest of the demo BD kept (RX path still present in `design_1.bd` and in the XDC) | [git] the committed BD/XDC still contain `dvi2rgb_0`, `v_tc_in`, `axi_gpio_video`, HDMI-in pins |
| PS | New `src/lorenz_dda/lorenz_dda.{c,h}`: register driver + software plotter (5x7 font, phase-plane plots, Bresenham lines) | Drive IP and draw into the VDMA framebuffer |
| PS | `video_demo.c` rewritten to Lorenz-only: boots to 1920x1080, four-quadrant screen, UART keys `+ - p i s q` | Simplify; no test patterns / capture |

Screen layout (1920x1080): XY top-left, YZ top-right, XZ bottom-left, panel bottom-right (left column = init values x0,y0,z0,sigma,rho,beta,dt; right column = live X,Y,Z).

### 1.4 Team context [git]
Shared repo `IvannnHuang/MEng_ZYBO`, three authors. Two parallel designs:
- `ivan_lorenz_hdmi/` (Ivan): `lorenz_dda_driver` IP, single-step solver.
- `lorenz_ip_hdmi/` (Zarif, Amber): `lorenz_reader` IP, free-running solver with hardware run/pause + speed divider (`ctrl_reg`), HDMI RX stripped from BD; Amber's `Convert-VitisMakefiles.ps1` fixes the driver-Makefile bug (I-07).
- `tut_vids/` (Zarif): Xilinx tutorial-video counter/Fibonacci practice project.

---

## 2. Build log (proposed page = stage)

### S0 Background (git only, before transcripts)  [git]
- 02-28 blinky demo uploaded; 03-07 VGA driver attempt ("no VGA on Zybo" — abandoned).
- 09-08 Digilent HDMI PS sources imported (`hdmi_driver/Zybo-Z7-10-HDMI/src`), "control code modified with Claude"; Zarif's tutorial-video custom hardware.
- 09-11 PS-side draft; Vivado BD simplified; first custom AXI IP for Lorenz DDA "failed because of interface difference" **[?]** what mismatched.
- 09-17 Zarif: Lorenz (chaotic) displays on HDMI (`lorenz_reader`). Ivan: repackaged IP "can't synthesize for some reason, try recreate new project next time" **[?]**; Zarif "ip path fixed, synthed".
- 09-18 Zarif fixes `axi_dynclk`/`rgb2dvi` `SyncAsync` collision (I-13); Ivan: "custom IP built and connected to main block diagram, PL bitstream generated".
- 09-19/20 Zarif: hardware stripped, start/stop + speed control on `lorenz_reader`; Amber: Makefile-conversion script.

### S1 Package the custom IP (09-18)  [chat]
1. IP source `ip_repo/lorenz_dda_driver_1_0` (originally `hdmi_driver/ip_repo/...`); registers 0x00-0x2C (12 regs), `C_S00_AXI_ADDR_WIDTH = 7`.
2. Vivado spawn error -> rename PC (I-01). Path-length error -> short packaging path (I-02).
3. Instance upgraded against stale definition -> fix repo paths, upgrade Rev 1 -> 3 (I-03).
4. Dangling `M04_AXI` -> `NUM_MI 4` (I-04).
5. Synthesis completes (`synth_design Complete!`).

### S2 First integration on the simplified, HDMI-out-only design (`hdmi_driver`, 09-21 afternoon)  [chat]
1. Analysis: Vitis platform stale (July-2024 XSA, no LORENZ macro); new XSA has no RX blocks (I-06).
2. RTL fix: add `load` (I-05). Repackage IP, upgrade in BD, regenerate bitstream, export `lorenz_hdmi.xsa` (base `0x43C10000` in this design).
3. Vitis: Update Hardware Specification -> build platform (Makefile typo, I-07) -> remove `video_capture` -> app compiles.
4. Program + run: no UART output, no HDMI signal (I-08). **Not resolved in chat.**

### S3 Restart on `ivan_lorenz_hdmi` (full stock design + IP, 09-21 evening)  [chat + git]  **[?]** why you restarted (the commit note says "try recreate new project next time")
1. New project `ivan_lorenz_hdmi/Zybo-Z7-HW` with `lorenz_dda_driver_0` on GP0 `M05_AXI` @ `0x43C30000`.
2. BD validation: HP0 interconnect broken (I-09) -> `fix_hp0_interconnect.tcl`.
3. Vitis workspace moved -> stale `D:/Zybo-Z7-SW` paths (I-10).

### S4 Bitstream, XSA, platform (09-21 night -> 09-22 morning)  [chat]
1. First app hung at first register write: data abort at `0x43C30000` (I-12) -> bitstream did not contain the IP.
2. Reset/re-run synth+impl; `INBB-3` black box `axi_dynclk` (I-13) **[?] final fix**.
3. Re-run `upgrade_ip` Rev 1 -> 3, ADDR width -> 7 (I-03 again in this project).
4. Export XSA, Update HW spec, platform build fails on driver Makefile again (I-07), fixed; `XPAR_LORENZ_DDA_DRIVER_0_S00_AXI_BASEADDR = 0x43C30000` confirmed.

### S5 PS driver + plotter (09-22)  [chat + git]
1. Register driver: `SetParams`, `Load`, `Step`, `ReadState`, `ReadParams`.
2. Plotter: 3 `PhasePlot`s; line-vs-dot heuristic for reset jumps.
3. Hook into `video_demo.c` (`#ifdef XPAR_LORENZ_DDA_DRIVER_0_S00_AXI_BASEADDR`).
4. First run: plotter working; frames a bit cut off -> larger boxes; 16 solver steps per plotted point.

### S6 UI and performance polish (09-22)  [chat]
1. Lorenz-only 1920x1080 four-quadrant layout; fix colour-label bug (I-15).
2. `s` command to set x0,y0,z0,sigma,rho,beta,dt over UART (I-14).
3. Speed: default delay 6000 us, `+`/`-` halve/double.
4. Startup menu printout; one-line comments.
5. Two-column parameter panel (init values left, live X/Y/Z right).
6. Speed lever discussed: whole-frame D-cache flush (I-16).

### S7 Persist and share (09-22)  [chat]
1. `git push` rejected (I-17).
2. Boot from SD: stale `BOOT.BIN`, stale platform path, new image lands in `_ide/bootimage/BOOT.bin` (I-18). **[?]** whether the SD boot was tested.

---

## 3. Issues (standalone entries; each needs a build-log back-link)

| ID | Title | Trigger | Diagnosis | Fix |
|---|---|---|---|---|
| I-01 | Vivado `[Common 17-180] Spawn failed: No error` | IP synthesis, 8x | Read IP files (clean), `hostname` output mangled, decoded `$env:COMPUTERNAME` -> U+2018 curly quote; `.Xil/Vivado-<pid>-<host>` in git status | Rename PC to plain ASCII (`Rename-Computer -NewName ... -Restart`); log then shows `Vivado-20976-IvanLaptop` |
| I-02 | `[Common 17-680]` path > 260 bytes | IP packager temp project nested in `Zybo-Z7-HW.tmp/...`; Vivado prefixes the path twice (~400+ chars) | Counted path, saw `synth_1/d:/...` doubling | Package/edit IP under short dir (e.g. `D:\ip\lz`), delete stale `*_project*` tmp folders; `subst` alone is not enough **[?]** the path you actually used |
| I-03 | Instance upgraded to stale definition; `ip_upgrade.log` warnings (`IP_Flow 19-3374`, `19-4706`, Critical `Coretcl 2-1280`) | Upgrade log said Rev 13 -> Rev 1, ports 7 -> 4 bits; later log Rev 1 -> 3, 5 -> 7 bits | `.xpr` had 4 overlapping `ip_repo_paths`, one pointing at a deleted copy; `component.xml` rev 3, width 7 | Set `ip_repo_paths` to `../ip_repo` + `Zybo-Z7-HW.ipdefs/repo`, `update_ip_catalog -rebuild`, check `core_revision` = 3, `upgrade_ip`; verify `CONFIG.C_S00_AXI_ADDR_WIDTH` = 7. Warning about the disabled parameter is expected. |
| I-04 | `[BD 41-2670]` / `[BD 5-699]` incomplete address path on `M04_AXI` | `validate_bd_design` after upgrade | Lorenz IP was on `M02_AXI` @ `0x43C10000` (fine); `M04_AXI` had no net | `set_property CONFIG.NUM_MI 4 [get_bd_cells axi_interconnect_gp0]`, validate, `save_bd_design` (`save_bd_design_as` was a typo) |
| I-05 | Integrator stuck at (0,0,0) | Read RTL before writing PS code | `InitialOut` loads only while `reset`; AXI regs are 0 during reset; (0,0,0) is a Lorenz fixed point | Added `load` = `slv_reg_ctrl[1]` through `lorenz_dda_driver.v` -> `lorenz_solver.v` -> `integrator.v` (`v1new = (reset|load) ? InitialOut : ...`). Untested in simulation; later worked on hardware. |
| I-06 | Vitis platform stale / app does not match new hardware | XSA dated 2024-07-04, no `LORENZ` macro; stock demo needs `v_tc_in`, `axi_gpio_video` | Unzipped XSA, grepped `xparameters.h` | Update Hardware Specification, rebuild platform, check macro; remove `video_capture` (needs `xgpio`) |
| I-07 | Platform build: driver Makefile `($wildcard *.c)` | BSP build of `lorenz_dda_driver_v1_0` | gcc got `(ildcard` and `*.c)`; `cannot find -lrsa` is a knock-on | `$(wildcard *.c)` / `$(wildcard *.o)` in `LIBSOURCES`/`OUTS`. Six copies: `ip_repo/.../drivers/.../src/Makefile`, `*.gen/.../drivers/...`, `design_1_wrapper/hw/drivers`, `tempdsa/drivers`, app BSP `libsrc`, FSBL BSP `libsrc`. Hit 3x (09-21 x2, 09-22). `lorenz_ip_hdmi/scripts/Convert-VitisMakefiles.ps1` also repairs it. |
| I-08 | No UART output and no HDMI signal (simplified design) | Ran app after S2 | Stale launch-config bitstream name (`design_1_wrapper.bit` vs `lorenz_hdmi.bit`); ELF older than edits; boot markers `[1]`-`[5]` added | **Unresolved in chat** **[?]** |
| I-09 | `[BD 41-758]` clock pins not connected, `[BD 41-1031]` HDL generation failed | Validate in new project | `axi_interconnect_hp0` hierarchy half-saved: only `xbar` + empty `s00_couplers`, no nets | `fix_hp0_interconnect.tcl` deleted and recreated HP0 interconnect (2 slaves, 1 master, regslice 4, FCLK1 clocks/resets, DDR segments). Claude could not run it; you reported the bitstream generated afterwards. Script no longer in repo **[?]** |
| I-10 | Vitis platform path `D:/Zybo-Z7-SW/ws/...` not found | Rebuild app; later Create Boot Image | `.sprj`, `.prj`, `.cproject` still point at old workspace | Update HW spec + build platform to get `.xpfm`, Change Referenced Platform; `.sprj` path edited to `ivan_lorenz_hdmi/design_1_wrapper/export/.../design_1_wrapper.xpfm`. `.cproject` `D:/Zybo-Z7-SW/src/...` left as dead entries |
| I-11 | Compile error: unterminated string in `xil_printf` | Rebuild after adding `case 'l'` | `\n\r` written as real newlines by the edit | Restored escapes at 3 lines |
| I-12 | Hang at first Lorenz register write; CPU in `Xil_DataAbortHandler` | Run app; `[6]` printed, `[7]` not | Debug view: `cpsr 0x600f01d7` (abort mode), fault at the `str` in `Xil_Out32`; XSCT `mrd 0x43C30000` -> `Fault status 0x8`, `mrd 0x43C00000` OK; `impl_1` outputs dated 18:15, BD repaired 18:46, `write_bitstream` only reopened the old checkpoint | `reset_run synth_1`, `launch_runs impl_1 -to_step write_bitstream -jobs 8`, check timing, re-export XSA, Update HW spec |
| I-13 | `[DRC INBB-3]` `axi_dynclk_0/U0` is a black box | Synthesis/`opt_design` | Zarif's commit `f3a2572`: `axi_dynclk.vhd` uses `SyncAsync` generic `kResetPolarity`, `rgb2dvi`'s older `SyncAsync.vhd` lacks it -> primary-unit collision. Your chat hit API errors. | Zarif: use axi_dynclk's `SyncAsync.vhd` in `rgb2dvi`. **[?]** In your tree `rgb2dvi/src/SyncAsync.vhd` has no `kResetPolarity`; how did you clear it? |
| I-14 | `xil_printf` has no `%f`; prompt text missing after `s` | New `s` command | `printf` without newline not shown (assistant's explanation, not verified) | Format with `snprintf`, print with `xil_printf` |
| I-15 | Plot colours wrong (YZ/XZ swapped) | Code review | Pixel order is (R, B, G) in this framebuffer | Labels/colours corrected |
| I-16 | Trace looks clipped and slow | First run | Tiny Euler step, 1 step per point; whole-frame flush per point (~6.2 MB) | 16 steps per point, larger plots, 6000 us default delay. Dirty-rect flush was written in chat but is **not in current source** **[?]** |
| I-17 | `git push` rejected: `Zybo-Z7-10-HDMI-hw.xpr.zip` 117 MB > 100 MB | Push of 2 local commits | Zips were only in unpushed commits | Removed zips from those commits, added to `.gitignore` |
| I-18 | Stale `BOOT.BIN` / Create Boot Image fails | SD boot | `Debug/sd_card/BOOT.BIN` dated 2024-07-04; Vitis could not read platform | Fix `.sprj` path (I-10), Create Boot Image -> `_ide/bootimage/BOOT.bin`; or `bootgen -image system.bif -o sd_card/BOOT.BIN -w` |


---

## 4. Gotchas
**Vivado**
- Non-ASCII computer name breaks every spawn (synth, impl, IP gen).
- 260-byte path limit; IP-packager temp projects nest deeply, Vivado doubles the path.
- Do not hand-edit `.xpr` while Vivado is open; fix `ip_repo_paths` from Tcl.
- After repackaging an IP: refresh catalog -> Report IP Status -> Upgrade -> validate -> regenerate outputs -> synth/impl -> export XSA.
- VLNV vendor is `xilinx.com` (typing `xilinx` returns no IP).
- Check run timestamps in `synth_1`/`impl_1` before trusting a bitstream; `write_bitstream` alone reuses the old routed checkpoint.
- Do not run `grep` in the Vivado Tcl console; use `exec` or an external shell.
- Vivado's generated driver `Makefile` may contain `($wildcard ...)`.
- Auto-generated BSP header `lorenz_dda_driver.h` is stale (`SLV_REG0-6` only); the app uses its own offsets.

**IP / arithmetic**
- Format is 27-bit signed: 1 sign + 6 integer + 20 fractional bits (written "Q6.20"; some chat text says Q7.20). Convert with `raw / 2^20`.
- `DT` (0x20) is a raw right-shift count, not fixed point (step = 2^-dt).
- One Euler step per CTRL bit 0 rising edge: write 1 then 0. `load` (bit 1) is a level: write 1 then 0. STATUS `done` is a 1-clock pulse.
- All parameters read 0 after reset until software writes them.
- Two designs, two base addresses: `0x43C10000` (simplified HDMI-out-only) vs `0x43C30000` (`ivan_lorenz_hdmi`).

**Vitis / PS**
- Update Hardware Specification -> Clean -> Build platform -> confirm `XPAR_..._BASEADDR` in `xparameters.h` (file date should be current, not 2024-07-04).
- BSP re-extracts driver files from the XSA; fix the IP source and re-export.
- Program FPGA warning about missing ELF is fine.
- Boot jumper JP5: JTAG vs SD. PL config is volatile; SD `BOOT.BIN` bundles FSBL + bitstream + ELF.
- Pixel = 3 bytes, order R,B,G; address `x*3 + y*stride`; flush D-cache so the VDMA scans fresh pixels.
- `xil_printf` has no float support; use `snprintf`.
- Source files use CRLF; `sed` edits must preserve it.
- Serial: 115200 8N1; open the terminal before running.

**Repo**
- GitHub 100 MB limit; `.gitignore` covers `*.bit`, `*.xsa`, `*.runs/`, `.metadata/`, etc.
- Two parallel chat sessions (09-22 morning) edited the same files; one set of edits is missing from the tree (see I-16).

---

## 5. Snippets to preserve (page in brackets)
- Tcl: `ip_repo_paths` + `update_ip_catalog -rebuild` + `core_revision` check + `upgrade_ip` [S1/I-03]
- Tcl: `NUM_MI 4`, `validate_bd_design`, `save_bd_design` [I-04]
- Tcl: `reset_run synth_1; launch_runs impl_1 -to_step write_bitstream -jobs 8; wait_on_run impl_1` [I-12]
- XSCT: `targets 1; fpga -file ...bit; targets 2; mrd 0x43C30000` [I-12]
- PowerShell: decode `COMPUTERNAME`, `Rename-Computer` [I-01]
- Makefile: broken vs fixed `LIBSOURCES`/`OUTS` [I-07]
- Verilog: `integrator.v` with `load`; `lorenz_solver.v` step/`>>> dt`; `signed_mult.v`; register map + read mux [S1/I-05]
- C: register offsets/macros; `SetParams`/`Load`/`Step`/`ReadState`; `LorenzDDAPlot_Update`; `DemoRun` loop and key handling [S5/S6]
- XDC: HDMI TX pins (H16/H17, D19/D20, C20/B20, B19/A20, TMDS_33) [architecture/reference]
- CLI: `bootgen -image system.bif -o sd_card/BOOT.BIN -w` [S7]

## 6. Figures you will need to supply (placeholders)
Block design (PL) final; address editor; IP packager; `report_ip_status`; 4 screenshots of the running display; Vitis platform/xparameters; XSCT abort; SD boot setup.

## 7. Open questions
See the message that accompanies this file.
