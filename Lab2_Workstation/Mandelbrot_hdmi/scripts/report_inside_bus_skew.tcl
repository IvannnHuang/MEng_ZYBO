set here [file dirname [file normalize [info script]]]
open_project [file normalize $here/../Zybo-Z7-HW/Zybo-Z7-HW.xpr]
open_run impl_1
report_bus_skew -file [file normalize $here/../../bus_skew_inside_set.rpt]
close_project
