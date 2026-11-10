# build_precision.tcl -- rebuild one explicitly labeled solver-width configuration.
#
#   vivado -mode batch -source build_precision.tcl -tclargs 8 24 repackage
#
# Vivado must be closed. Writes util_${tag}.rpt, util_${tag}_hier.rpt, timing_${tag}.rpt
# next to Lab2_Workstation/, and the XSA to Zybo-Z7-HW/design_1_wrapper.xsa.
# The software needs no change: it reads the built count from the N_ACTIVE register.

set here [file dirname [file normalize [info script]]]
set hw   [file normalize $here/../Zybo-Z7-HW]
set out  [file normalize $here/../..]
set n    [lindex $argv 0]
set w    [lindex $argv 1]
if {![string is integer -strict $w] || $w < 18 || $w > 27} { error "usage: -tclargs NSOLV SOLVER_W repackage" }
set tag "precision_w${w}_n${n}"
set repack [expr {[lsearch $argv repackage] >= 0}]
if {![string is integer -strict $n] || $n < 1 || $n > 255} { error "usage: -tclargs <NSOLV 1..255> ?repackage?" }

open_project $hw/Zybo-Z7-HW.xpr
# Resolve only this checkout's packaged core, not the workstation's open project.
set_property ip_repo_paths [list $hw/ip_repo/mandelbrot_driver_1_0 $hw/Zybo-Z7-HW.ipdefs/repo] [current_project]

# After editing the IP's Verilog in ip_repo, the IP must be re-packaged and upgraded,
# otherwise Vivado keeps using its cached copy of the old source.
if {$repack} {
    set core [ipx::open_core $hw/ip_repo/mandelbrot_driver_1_0/component.xml]
    ipx::update_checksums $core
    set_property core_revision [expr {[get_property core_revision $core] + 1}] $core
    ipx::save_core $core
    ipx::unload_core $core
    update_ip_catalog -rebuild             ;# all repos the project knows (here: ip_repo/mandelbrot_driver_1_0)
    upgrade_ip [get_ips -filter {NAME =~ "*mandelbrot_driver*"}]
    report_ip_status -file $out/ip_status_${tag}.rpt
    puts "NSOLV: IP re-packaged and upgraded"
}

open_bd_design [get_files design_1.bd]
set_property -dict [list CONFIG.NSOLV $n CONFIG.SOLVER_W $w] [get_bd_cells mandelbrot_driver_0]
puts "NSOLV: mandelbrot_driver_0 NSOLV = [get_property CONFIG.NSOLV [get_bd_cells mandelbrot_driver_0]]"
validate_bd_design
save_bd_design

generate_target all [get_files design_1.bd]
update_compile_order -fileset sources_1
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} { error "NSOLV: implementation did not finish" }
open_run impl_1
report_utilization                    -file $out/util_${tag}.rpt
report_utilization -hierarchical      -file $out/util_${tag}_hier.rpt
report_timing_summary                 -file $out/timing_${tag}.rpt
report_bus_skew -file $out/bus_skew_${tag}.rpt
set setup [get_property SLACK [get_timing_paths -delay_type max -max_paths 1]]
set hold  [get_property SLACK [get_timing_paths -delay_type min -max_paths 1]]
if {$setup < 0 || $hold < 0} { error "inside-set build fails timing: setup=$setup hold=$hold" }
set ndsp [llength [get_cells -hier -filter {REF_NAME == DSP48E1}]]
if {$ndsp > 80} { error "inside-set build exceeds DSP budget: $ndsp" }
write_hw_platform -fixed -include_bit -force -file $hw/design_1_wrapper.xsa
puts "PRECISION: built NSOLV=$n SOLVER_W=$w; XSA written"
close_project
