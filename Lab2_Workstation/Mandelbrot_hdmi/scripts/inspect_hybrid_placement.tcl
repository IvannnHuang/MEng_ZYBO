# Read the completed post-placement checkpoint; do not alter the project.
set here [file dirname [file normalize [info script]]]
set hw [file normalize $here/../Zybo-Z7-HW]
set out [file normalize $here/../../precision/hybrid18]
open_checkpoint $hw/Zybo-Z7-HW.runs/impl_1/design_1_wrapper_physopt.dcp
report_timing -delay_type max -max_paths 10 -nworst 1 -file $out/initial_placed_critical_paths.rpt
close_design
