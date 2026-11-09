# Vivado Tcl commands: what we ran and why

Run these in the **Tcl Console** at the bottom of Vivado, with the project open. Paths use forward slashes, even on Windows.

## Reports

### Open the last implementation (needed before any report)
```tcl
open_run impl_1
```
- Opens the routed design from the last completed implementation run, even if Vivado says it's "out-of-date".
- Without it, report commands fail with `[Common 17-53] No open design`.
- Run 2026-11-09: OK (~16 s).

### Utilization by block (hierarchical)
```tcl
report_utilization -hierarchical -file C:/Users/zk67/MEng_ZYBO/Lab2_Workstation/util_v1_hier.rpt
```
- One row per block (and sub-block) with LUTs, FFs, BRAM, DSPs. Use it to see what each IP costs.
- Run 2026-11-09 on v1 → `util_v1_hier.rpt`. Results are in `session-log-2026-11-09.md` ("Resource breakdown").
- Re-run after each hardware change with a new file name (`util_<step>_hier.rpt`) so the before/after can be compared.

### Timing summary (how much clock headroom there is)
```tcl
report_timing_summary -file C:/Users/zk67/MEng_ZYBO/Lab2_Workstation/timing_v1.rpt
```
- Look at **WNS** (worst negative slack) per clock. Positive WNS = headroom: max clock ≈ 1 / (period − WNS).
- The `[Timing 38-436] set_bus_skew` warning is normal here (Digilent/VDMA clock-crossing constraints); everything is still met.
- Run 2026-11-09 on v1 → `timing_v1.rpt`. All constraints met:

| Clock | Drives | WNS |
|---|---|---|
| `clk_fpga_0` 100 MHz | Mandelbrot IP, GP0 | **+0.255 ns** → max ≈ 102 MHz |
| `clk_fpga_1` 133 MHz | VDMA, HP0 | +0.175 ns |
| `clk_fpga_2` 200 MHz | `dvi2rgb` ref clock (HDMI in) | +0.889 ns |
| `axi_dynclk_0_PXL_CLK_O` | HDMI out pixel clock | +1.253 ns |

- Worst 100 MHz path: inside a solver, `SOLV[2].u_solver/a_zr_reg` → `m_pri_reg` (the `zr × zi` multiply): 9.6 ns, 13 logic levels (7 CARRY4). Part of each 27×27 multiply is LUT/carry logic next to the DSPs. **No clock headroom** without pipelining the multiply deeper (solver parameter `ML`, now 2).

### Worst path for one clock (how we found the one above)
Open `timing_v1.rpt` and find the first `Slack` under `From Clock: clk_fpga_0 / To Clock: clk_fpga_0 → Max Delay Paths`. In Tcl:
```tcl
report_timing -from_clock clk_fpga_0 -to_clock clk_fpga_0 -max_paths 5 -file C:/Users/zk67/MEng_ZYBO/Lab2_Workstation/timing_v1_fclk0_paths.rpt
```

## Removing the HDMI input: `Mandelbrot_hdmi/scripts/strip_hdmi_in.tcl`
Run from a terminal with **Vivado closed** (the script opens the project itself):
```bat
cd C:\Users\zk67\MEng_ZYBO\Lab2_Workstation\Mandelbrot_hdmi\scripts
C:\Xilinx\Vivado\2024.1\bin\vivado.bat -mode batch -nojournal -log strip_edit.log  -source strip_hdmi_in.tcl
C:\Xilinx\Vivado\2024.1\bin\vivado.bat -mode batch -nojournal -log strip_build.log -source strip_hdmi_in.tcl -tclargs build
```
- No arguments: edit + validate + save the block design only (~2 min).
- `build`: also synthesis, implementation, bitstream, `util_stripped*.rpt`, `timing_stripped.rpt`, and the XSA (`Zybo-Z7-HW/design_1_wrapper.xsa`).
- Key commands it uses (also work in the GUI Tcl console): `delete_bd_objs`, `set_property CONFIG.<param>`, `connect_bd_net`, `connect_bd_intf_net`, `disconnect_bd_net`, `assign_bd_address -offset ... -force`, `validate_bd_design`, `save_bd_design`, `launch_runs impl_1 -to_step write_bitstream`, `write_hw_platform -fixed -include_bit`.
- Build run 2026-11-09 (16:41 → 16:45): OK. LUTs 11,623 → 8,187, registers 17,152 → 11,089, BRAM tiles 18 → 11, MMCMs 2 → 1, DSPs unchanged; WNS +0.223 ns at 100 MHz.
- Edit run 2026-11-09: OK, block design validated. 4× `[PSU-1..4] negative DQS skew` critical warnings: these are Digilent's board-preset DDR values, identical in v1, printed whenever the PS block is re-configured. Not caused by the edit.

## To run next

### Plain utilization totals (quick check)
```tcl
report_utilization -file C:/Users/zk67/MEng_ZYBO/Lab2_Workstation/util_v1.rpt
```
