# Apply post-route physical optimization to the completed mixed design.
set here [file dirname [file normalize [info script]]]
set hw [file normalize $here/../Zybo-Z7-HW]
set out [file normalize $here/../..]
set tag hybrid_w18_d25_l2
open_project $hw/Zybo-Z7-HW.xpr
open_run impl_1
phys_opt_design -directive AggressiveExplore
report_timing_summary -file $out/precision/hybrid18/postroute_physopt_timing.rpt
set setup [get_property SLACK [get_timing_paths -delay_type max -max_paths 1]]
set hold [get_property SLACK [get_timing_paths -delay_type min -max_paths 1]]
if {$setup < 0 || $hold < 0} {error "Post-route optimization still fails: setup=$setup hold=$hold"}
set ndsp [llength [get_cells -hier -filter {REF_NAME == DSP48E1}]]
if {$ndsp != 79} {error "Unexpected hybrid DSP count: $ndsp"}
write_checkpoint -force $hw/Zybo-Z7-HW.runs/impl_1/design_1_wrapper_routed.dcp
write_bitstream -force $hw/Zybo-Z7-HW.runs/impl_1/design_1_wrapper.bit
report_utilization -file $out/util_${tag}.rpt
report_utilization -hierarchical -file $out/util_${tag}_hier.rpt
report_timing_summary -file $out/timing_${tag}.rpt
report_bus_skew -file $out/bus_skew_${tag}.rpt
report_timing_summary -file $hw/Zybo-Z7-HW.runs/impl_1/design_1_wrapper_timing_summary_routed.rpt
write_hw_platform -fixed -include_bit -force -file $hw/design_1_wrapper.xsa
puts "HYBRID_POSTROUTE_PASS setup=$setup hold=$hold DSP=$ndsp"
close_project
