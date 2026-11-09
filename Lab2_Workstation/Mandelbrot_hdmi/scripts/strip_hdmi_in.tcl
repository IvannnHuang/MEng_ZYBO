# strip_hdmi_in.tcl -- remove the Digilent HDMI *input* path from design_1, keep HDMI output.
#
#   edit + validate only : vivado -mode batch -source strip_hdmi_in.tcl
#   also build + export  : vivado -mode batch -source strip_hdmi_in.tcl -tclargs build
#
# Vivado must be closed (the project can't be open twice).
# Constraints (Zybo-Z7-Master.xdc, HDMI RX pins) are commented out separately.

set here [file dirname [file normalize [info script]]]
set hw   [file normalize $here/../Zybo-Z7-HW]
set do_build [expr {[lsearch $argv build] >= 0}]

proc say {msg} { puts "STRIP: $msg" }

open_project $hw/Zybo-Z7-HW.xpr
open_bd_design [get_files design_1.bd]

# ---------------------------------------------------------------- 1. RX blocks and ports
# dvi2rgb (HDMI receiver), video-in, input timing detector, input stream converter,
# the RX pixel-clock reset, and the GPIO that only drove RX hot-plug / read pixel-lock.
set rx_cells {dvi2rgb_0 v_vid_in_axi4s_0 v_tc_in axis_subset_converter_in proc_sys_reset_0 axi_gpio_video}
set rx_ports {hdmi_in hdmi_in_ddc hdmi_in_hpd}
delete_bd_objs [get_bd_intf_nets -quiet -of_objects [get_bd_intf_ports $rx_ports]]
delete_bd_objs [get_bd_intf_ports $rx_ports]
delete_bd_objs [get_bd_cells $rx_cells]
say "deleted cells: $rx_cells; ports: $rx_ports"

# ---------------------------------------------------------------- 2. VDMA: read channel only
set_property CONFIG.c_include_s2mm {0} [get_bd_cells axi_vdma_0]
say "axi_vdma_0: write channel (S2MM) off"

# ---------------------------------------------------------------- 3. HP0 interconnect: 3 -> 2 slave ports
# S00 = VDMA read (FCLK1), S01 was VDMA write, S02 was the Mandelbrot IP (FCLK0).
# The IP moves to S01, so S01's clock/reset must move from FCLK1 to FCLK0.
set hp0 axi_interconnect_hp0
foreach p {S01_AXI S02_AXI} {
    delete_bd_objs [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins $hp0/$p]]
}
foreach p {S01_ACLK S01_ARESETN S02_ACLK S02_ARESETN} {
    set n [get_bd_nets -quiet -of_objects [get_bd_pins $hp0/$p]]
    if {$n ne ""} { disconnect_bd_net $n [get_bd_pins $hp0/$p] }
}
set_property CONFIG.NUM_SI {2} [get_bd_cells $hp0]
connect_bd_intf_net [get_bd_intf_pins mandelbrot_driver_0/M00_AXI] [get_bd_intf_pins $hp0/S01_AXI]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0]        [get_bd_pins $hp0/S01_ACLK]
connect_bd_net [get_bd_pins proc_sys_reset_fclk0/peripheral_aresetn] [get_bd_pins $hp0/S01_ARESETN]
say "$hp0: NUM_SI=2, mandelbrot M00_AXI -> S01 on FCLK0"

# ---------------------------------------------------------------- 4. GP0 interconnect: 6 -> 4 master ports
# Was: M00 VDMA, M01 axi_dynclk (HDMI OUT pixel clock -- keep!), M02 v_tc_in, M03 v_tc_out,
#      M04 axi_gpio_video, M05 Mandelbrot. Now: M00 VDMA, M01 dynclk, M02 v_tc_out, M03 Mandelbrot.
set gp0 axi_interconnect_gp0
foreach p {M02_AXI M03_AXI M04_AXI M05_AXI} {
    delete_bd_objs [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins $gp0/$p]]
}
foreach p {M04_ACLK M04_ARESETN M05_ACLK M05_ARESETN} {
    set n [get_bd_nets -quiet -of_objects [get_bd_pins $gp0/$p]]
    if {$n ne ""} { disconnect_bd_net $n [get_bd_pins $gp0/$p] }
}
set_property CONFIG.NUM_MI {4} [get_bd_cells $gp0]
connect_bd_intf_net [get_bd_intf_pins $gp0/M02_AXI] [get_bd_intf_pins v_tc_out/ctrl]
connect_bd_intf_net [get_bd_intf_pins $gp0/M03_AXI] [get_bd_intf_pins mandelbrot_driver_0/S00_AXI]
foreach p {M02_ACLK M03_ACLK} {
    if {[get_bd_nets -quiet -of_objects [get_bd_pins $gp0/$p]] eq ""} {
        connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins $gp0/$p]
    }
}
foreach p {M02_ARESETN M03_ARESETN} {
    if {[get_bd_nets -quiet -of_objects [get_bd_pins $gp0/$p]] eq ""} {
        connect_bd_net [get_bd_pins proc_sys_reset_fclk0/peripheral_aresetn] [get_bd_pins $gp0/$p]
    }
}
say "$gp0: NUM_MI=4 (M02 v_tc_out, M03 mandelbrot)"

# ---------------------------------------------------------------- 5. interrupt concat: 5 -> 2 inputs
# Keep In0 = VDMA read irq; v_tc_out irq moves from In2 to In1. (The app doesn't use IRQs.)
delete_bd_objs [get_bd_nets -quiet -of_objects [get_bd_pins v_tc_out/irq]]
set_property CONFIG.NUM_PORTS {2} [get_bd_cells xlconcat_0]
connect_bd_net [get_bd_pins v_tc_out/irq] [get_bd_pins xlconcat_0/In1]
say "xlconcat_0: NUM_PORTS=2"

# ---------------------------------------------------------------- 6. remove nets left with < 2 ends
foreach n [get_bd_nets -quiet] {
    set ends [expr {[llength [get_bd_pins -quiet -of_objects $n]] + [llength [get_bd_ports -quiet -of_objects $n]]}]
    if {$ends < 2} { say "removing dangling net $n"; delete_bd_objs $n }
}
foreach n [get_bd_intf_nets -quiet] {
    set ends [expr {[llength [get_bd_intf_pins -quiet -of_objects $n]] + [llength [get_bd_intf_ports -quiet -of_objects $n]]}]
    if {$ends < 2} { say "removing dangling intf net $n"; delete_bd_objs $n }
}

# ---------------------------------------------------------------- 7. FCLK_CLK2 (200 MHz) only fed dvi2rgb
set_property CONFIG.PCW_EN_CLK2_PORT {0} [get_bd_cells processing_system7_0]
say "processing_system7_0: FCLK_CLK2 off"

# ---------------------------------------------------------------- 8. addresses: keep v1's map
proc pin_addr {space seg offset range} {
    if {[catch {assign_bd_address -offset $offset -range $range -target_address_space [get_bd_addr_spaces $space] [get_bd_addr_segs $seg] -force} err]} {
        say "address $seg: $err"
    }
}
assign_bd_address -quiet
pin_addr processing_system7_0/Data   axi_vdma_0/S_AXI_LITE/Reg                         0x43000000 64K
pin_addr processing_system7_0/Data   axi_dynclk_0/S_AXI_LITE/S_AXI_LITE_reg            0x43C00000 64K
pin_addr processing_system7_0/Data   mandelbrot_driver_0/S00_AXI/S00_AXI_reg           0x43C10000 64K
pin_addr processing_system7_0/Data   v_tc_out/ctrl/Reg                                 0x43C30000 64K
pin_addr mandelbrot_driver_0/M00_AXI processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM      0x00000000 1G
pin_addr axi_vdma_0/Data_MM2S        processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM      0x00000000 1G
foreach s [get_bd_addr_segs -quiet -of_objects [get_bd_addr_spaces -quiet]] {
    say "addr [get_property NAME $s]  [get_property OFFSET $s]  [get_property RANGE $s]"
}

# ---------------------------------------------------------------- 9. validate + save
validate_bd_design
save_bd_design
say "block design validated and saved"

if {!$do_build} { say "edit-only run done (rerun with -tclargs build to implement)"; close_project; return }

# ---------------------------------------------------------------- 10. build + export
generate_target all [get_files design_1.bd]
update_compile_order -fileset sources_1
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} { error "STRIP: implementation did not finish" }
open_run impl_1
report_utilization -file             $hw/../../util_stripped.rpt
report_utilization -hierarchical -file $hw/../../util_stripped_hier.rpt
report_timing_summary -file          $hw/../../timing_stripped.rpt
write_hw_platform -fixed -include_bit -force -file $hw/design_1_wrapper.xsa
say "built; XSA written to $hw/design_1_wrapper.xsa"
close_project
