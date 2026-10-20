# Lab 2 — Vitis setup session log (2026-10-19)

## Starting point
- Partner pushed `Lab2/Mandelbrot_hdmi/` (full Vitis Classic workspace, incl. `.metadata`) from their laptop.
- Goal: get it building and running on the FPGA from this workstation.

## Problems found & fixes

1. **Don't reuse partner's `.metadata` workspace.** It's machine-specific (locks, caches). Created a fresh local workspace instead: `Lab2/Mandelbrot_workspace_workstation/`.

2. **Imported existing projects** into the new workspace via `File → Import → Existing Projects into Workspace`:
   - `Zybo-Z7-10-HDMI_system` (platform/system project)
   - `Zybo-Z7-10-HDMI` (application project)

3. **Platform reference was broken.** `Zybo-Z7-10-HDMI_system.sprj` hardcoded `platform="D:/Zybo-Z7-SW/ws/.../design_1_wrapper.xpfm"` — partner's absolute path, not in the repo. Same issue in `Zybo-Z7-10-HDMI/.cproject` (hardcoded `D:/Zybo-Z7-SW/src/...` include + linker-script paths).
   - XSA itself *is* in the repo: `Lab2/Mandelbrot_hdmi/Zybo-Z7-HW/design_1_wrapper.xsa`.
   - Fix: created a new **Platform Project** (`design_1_wrapper`) from that XSA (`File → New → Platform Project`, OS: Standalone, CPU: `ps7_cortexa9_0`), built it, then pointed the system project at the new local `.xpfm` via the **Change Platform** dialog.

4. **Platform build failed — malformed Makefile wildcard.**
   ```
   arm-xilinx-eabi-gcc.exe: error: (ildcard: linker input file not found
   arm-xilinx-eabi-gcc.exe: error: *.c): linker input file not found
   ```
   Cause: Vivado-generated driver Makefile for `mandelbrot_driver_v1_0` had `($wildcard *.c)` instead of `$(wildcard *.c)`.
   Fix: reused existing script `lorenz_ip_hdmi/scripts/Convert-VitisMakefiles.ps1` (written earlier for the same bug on Lorenz's IP), pointed at the new platform's generated BSP:
   ```powershell
   .\lorenz_ip_hdmi\scripts\Convert-VitisMakefiles.ps1 -Root "Lab2\Mandelbrot_workspace_workstation\design_1_wrapper"
   ```

5. **"Domain 'domain_ps7_cortexa9_0' is invalid."** Leftover corruption from the earlier failed build.
   - Fix: opened `platform.spr` in the Platform Setup editor, deleted the broken domain under `ps7_cortexa9_0`, re-added a domain named exactly `domain_ps7_cortexa9_0` (must match what `Zybo-Z7-10-HDMI` expects), OS standalone, language C. Cleaned + rebuilt the platform. Then re-ran Change Platform on the system project — resolved.

## Status at end of session
Platform + system + app project now build locally without the D:\ / domain errors. Not yet confirmed running on actual hardware / HDMI output.

## USB mouse panning

### Background
- USB0 is a hard PS peripheral, not PL. No Vivado change needed: `PCW_USB0_PERIPHERAL_ENABLE=1` (MIO 28..39, PHY reset MIO 46) is already in `design_1.bd` from the board preset.
- Xilinx's `xusbps` BSP driver is device/gadget mode only. Wrote our own bare-metal EHCI host driver.
- Chose USB over PS/2: no extra hardware. Plan for the course is to hand students the driver and have them do the panning logic.

### Where the code lives
| File | What |
|---|---|
| `Zybo-Z7-10-HDMI/src/usbmouse/usbmouse.c/.h` | Driver. API: `UsbMouseInit()`, `UsbMousePoll(&dx, &dy, &buttons)` |
| `Zybo-Z7-10-HDMI/src/mandel/mandel.c` | Uses it: `pan_px()` shared by WASD + mouse. Mouse move = pan, left click = zoom in x2, right click = zoom out x2, `m` = re-detect |

- Kept identical in `Mandelbrot_hdmi/` (git) and `Mandelbrot_workspace_workstation/` (what Vitis builds). Edit one, copy to the other.
- `Mandelbrot_hdmi/ps_src/` is a **stale copy, not built**. Don't edit it.
- Include with a relative path: `#include "../usbmouse/usbmouse.h"`. `src/` isn't on the include path because `.cproject` still has the partner's `D:/` path.
- Command-line build that matches Vitis (run in `Zybo-Z7-10-HDMI/Debug`):
  ```bash
  export PATH="/c/Xilinx/Vitis/2024.1/gnu/aarch32/nt/gcc-arm-none-eabi/bin:/c/Xilinx/Vitis/2024.1/gnuwin/bin:$PATH"
  make all
  ```

### How the driver works
1. Pulse PHY reset (MIO46 low then high), reset controller, `USBMODE=3` (host).
2. ULPI viewport write: turn on VBUS + D+/D- pulldowns in the USB3320 PHY.
3. Async list = one control QH; periodic list = 1024 slots, filled later.
4. Port power, wait for connect, port reset, read speed from `PORTSC`.
5. Enumerate: GET_DESCRIPTOR(8) → SET_ADDRESS(1) → GET_DESCRIPTOR(18) → config descriptor → pick HID interface with protocol 2 (mouse) → SET_CONFIGURATION → SET_PROTOCOL(boot) → SET_IDLE(0).
6. Interrupt QH in every frame slot (polled every 1 ms). `UsbMousePoll()` reads `buttons, dx, dy` and re-arms.
- All controller-shared memory is in one 1 MB section marked uncached (`Xil_SetTlbAttributes`), so no cache flushing needed. Lands at `0x00300000`.

### Bugs found and fixed
- **Wrong file edited:** first edits went into `ps_src/`. Reverted, redone in the real project.
- **Missing header:** `usbmouse/usbmouse.h: No such file`. Fixed with the relative include.
- **First driver draft:** the interrupt QH link was left at 0 (controller would read address 0), the data toggle reset on every poll (every other report dropped), there was no PHY reset or VBUS, and cache coherency was ignored. Rewrote with real qTDs and uncached DMA memory.
- **Low-speed routing:** low-speed devices go through the controller's built-in transaction translator (TT). The QH hub address must be **0** and the port number **1**. I had the port number at 0. Linux `qh_make()` does the same for ChipIdea/TDI.

### Hardware test log
- Board: set the USB **host** jumper. No other jumpers needed for USB.
- Without the jumper: `nothing connected`.
- With the jumper: `PORTSC=0x84001407 (low speed)`, then `GET_DESCRIPTOR(device) failed`. The mouse has power (a device can only signal its speed if powered).
- Mouse LED off: normal until the host configures the mouse. It's not a power problem.
- Fix applied: TT port number = 1, retry the first descriptor read 3 times, print the raw status on failure. **Not yet re-tested.**

### Reading a failure printout
`usb:   req 0x06 setup stage failed: qTD tok=0x...XX ...` — look at the last byte of `qTD tok`:

| Ends in | Meaning |
|---|---|
| `80` | Never finished; controller isn't processing the request. |
| `48` / `08` | Transaction error; the mouse didn't answer, so the routing is still wrong. |
| `50` / `60` | Babble / buffer error. |
| `USBSTS` bit 4 set | Controller couldn't reach memory. |

## Plan: package `usbmouse` for reuse (not done yet)
Goal: drop it into any Zybo Z7 bare-metal project (Lab 2, future labs, student handouts) with no edits.

1. **One shared copy.** Move it to `MEng_ZYBO/common/usbmouse/` (`usbmouse.c`, `usbmouse.h`, `README.md`, `example_main.c`). Projects link to it instead of copying, so fixes reach every lab.
2. **Make it self-contained.** No includes of project code. Only depends on BSP pieces always present on Zynq standalone: `xil_io`, `xil_mmu`, `xil_printf`, `xgpiops`, `xtime_l`. Write these down as requirements.
3. **Settings at the top as `#ifndef` defaults**, overridable from the project's compiler flags:
   - `USBMOUSE_BASEADDR` (default `XPAR_PS7_USB_0_BASEADDR`)
   - `USBMOUSE_PHY_RESET_MIO` (default 46)
   - `USBMOUSE_VERBOSE` (turn the `usb:` prints on/off)
4. **Small, stable API.** Keep `UsbMouseInit()` / `UsbMousePoll()`, and maybe add `UsbMouseIsReady()`. Explain units in the header (raw counts, +dy = down). Panning and gain stay in the app, not the driver.
5. **Pick how projects pull it in** (decide one):
   - a. Simplest: copy or link the folder into `src/`, and add `${workspace_loc:/${ProjName}/src}` to the include paths. That also fixes the `D:/` path problem.
   - b. Vitis Static Library project (`libusbmouse.a`); app projects reference it. Cleaner for students: they get the header and the library, not the source.
   - c. Custom BSP library repository (`.mld`/`.tcl`), shown as a checkbox in BSP settings. Most work; probably overkill.
6. **Hardware requirements in the README:** PS7 USB0 enabled (board preset), host jumper set, DMA section placement, 1 MB of bss.
7. **Example + test:** a minimal `example_main.c` that prints dx/dy/buttons. Use it as the bring-up test for each new board or semester.
8. **Version it:** short changelog in the README. Tag a known-good commit once it's confirmed working on hardware.

## `Lab2_Workstation/` — a self-contained copy for this machine
Why: the workstation needs its own working setup (new Vitis workspace, rebuilt platform, Makefile fixes, USB mouse code). The partner keeps using `Lab2/` exactly as it is in the last commit on their laptop.

What was done (2026-10-19, ~9:56 PM):
- `robocopy Lab2 → Lab2_Workstation`: 6,262 files, 1,241 folders, 0 failed (~493 MB, no file over 20 MB).
- Repointed absolute paths in `Lab2_Workstation/Mandelbrot_workspace_workstation/` (29 files) from `...\Lab2\...` to `...\Lab2_Workstation\...`. Most important: `design_1_wrapper/platform.spr` + `platform.tcl` now use `Lab2_Workstation/Mandelbrot_hdmi/Zybo-Z7-HW/design_1_wrapper.xsa`.
- Vivado project left as-is (its `.xpr` uses relative paths). Partner's old workspace inside the copy (`Mandelbrot_hdmi/.metadata` etc.) left as-is; not used here.
- Checked: the app builds from the copy with no references back to `Lab2/`.
- **Not pushed yet.**

From now on, work in the copy. **Confirmed working: it opens as-is, no scripts or fixes needed.**
- Vitis Classic: launch it, and when it asks for a workspace (or *File → Switch Workspace → Other...*), choose this exact folder:
  `C:\Users\zk67\MEng_ZYBO\Lab2_Workstation\Mandelbrot_workspace_workstation`
  The Explorer then shows all of its projects: `design_1_wrapper` (platform), `Zybo-Z7-10-HDMI` (app, with `src/mandel`, `src/usbmouse`, ...), and `Zybo-Z7-10-HDMI_system`. Don't import anything; they're already in the workspace.
- Vivado: open `Lab2_Workstation\Mandelbrot_hdmi\Zybo-Z7-HW\Zybo-Z7-HW.xpr`
- This log: `Lab2_Workstation/session-log-2026-10-19.md` is the one to keep updating.

### End-of-session checklist (push copy, restore `Lab2/`)
1. Close Vitis and Vivado.
2. Push only the new folder. **Use `-f`**: the repo `.gitignore` drops `*.xsa`, `*.bit`, `.metadata/`, `_ide/`, `Debug/`, `*.runs/`, etc. A plain `git add` only picks up 3,584 of 6,262 files.
   ```bash
   git add -f Lab2_Workstation
   git status --short | grep -v "^A  Lab2_Workstation"   # nothing else should be staged
   git commit -m "Add Lab2_Workstation: self-contained workstation copy of Lab 2"
   git push
   ```
3. Put `Lab2/` back to the last commit (keeps the edits in a stash, nothing deleted):
   ```bash
   git stash push -u -m "workstation edits to Lab2 (now in Lab2_Workstation)" -- Lab2
   git status --short Lab2        # should print nothing
   ```

## Next big task: parallelize the Mandelbrot hardware
The point of this lab is to make the Mandelbrot render faster and faster by putting more solver hardware in the PL. **Check how much of the FPGA is used at every step.** The Z7-10 is small, and it's easy to blow past a limit without noticing.

### Baseline (current bitstream, 4 solvers, from `impl_1/design_1_wrapper_utilization_placed.rpt`)
| Resource | Used | Available | % |
|---|---|---|---|
| Slice LUTs | 11,623 | 17,600 | 66.0 |
| Slice registers | 17,152 | 35,200 | 48.7 |
| Block RAM tiles | 18 | 60 | 30.0 |
| DSPs | 36 | 80 | 45.0 |
| MMCMs | 2 | 2 | **100** |
| Bonded IOBs | 29 | 100 | 29.0 |

- DSPs look like the first wall: 36 for 4 solvers is about 9 each, so ~8 solvers max if nothing else changes. LUTs are next.
- Both MMCMs are used. HDMI out (`axi_dynclk`) needs one; HDMI in (`dvi2rgb`) has the other.

### HDMI input is still in the design — remove it first
`design_1.bd` still contains the full HDMI **input** path left from the Digilent demo:
- `dvi2rgb`: HDMI receiver; uses an MMCM and IOBs. Its generated sources also include two debug ILAs (`ila_refclk`, `ila_pixclk`), which use BRAM and LUTs if they're enabled. Check in the hierarchical utilization report.
- `v_vid_in_axi4s`: video in → AXI stream
- a second `v_tc` (there are two; one is the input timing detector)
- likely one `axis_subset_converter` and the VDMA's write (S2MM) channel for capture

The PS side already moved `video_capture.c` / `intc.c` to `removed_src/`, but the hardware is still there. Removing it frees LUTs, registers, BRAM, IOBs, and an MMCM for solvers. This is its own long task: edit the block design, fix ports/constraints, re-validate, and re-export the XSA. That means the platform must be rebuilt and `Convert-VitisMakefiles.ps1` re-run.

### Plan
1. Get a per-IP breakdown before changing anything: in Vivado, open the implemented design and run `report_utilization -hierarchical`. Save it so we know how much the HDMI-in chain costs.
2. Remove the HDMI input chain and re-implement. Record the new utilization and confirm HDMI out still works.
3. Raise the solver count step by step. After each build, record LUT/FF/DSP/BRAM %, timing (WNS must stay ≥ 0), and render time (`b` key in the menu).
4. Keep a table here: solvers | LUT % | FF % | DSP % | BRAM % | WNS | render ms.
5. When DSPs run out, look at narrower multipliers, sharing, or LUT-based multipliers. Check timing as fill rises.

## For the partner
[`C_CODE_CHANGES.md`](C_CODE_CHANGES.md) lists the 3 C files that changed against the last commit, with exact repo paths to copy from, steps, and the full `mandel.c` diff.

## Next up
1. **Now:** switch Vitis/Vivado to `Lab2_Workstation`. Rebuild, reflash, press `m` to test the TT port-number fix. Record any `usb:   ...` lines here.
2. Once the mouse enumerates, tune pan speed (`MOUSE_GAIN` in `mandel.c`). If the pan direction feels backwards, flip the signs in the `pan_px(mdx * MOUSE_GAIN, -mdy * MOUSE_GAIN)` call in `wait_key()`.
3. End of session: run the checklist above (push `Lab2_Workstation`, stash `Lab2`).
4. Next session: hardware parallelization, starting with the per-IP utilization report and removing HDMI input.
5. Later: USB driver packaging plan.
