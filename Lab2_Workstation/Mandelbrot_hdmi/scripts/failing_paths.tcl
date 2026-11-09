# failing_paths.tcl -- list the worst setup paths of the last implementation (read-only).
#   vivado -mode batch -source failing_paths.tcl -tclargs <report-name>
set here [file dirname [file normalize [info script]]]
open_project [file normalize $here/../Zybo-Z7-HW/Zybo-Z7-HW.xpr]
open_run impl_1
report_timing -setup -max_paths 40 -nworst 1 -unique_pins -sort_by slack -path_type summary \
  -file [file normalize $here/../../[lindex $argv 0].rpt]
close_project
