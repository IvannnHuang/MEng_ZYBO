# export_bd_svg.tcl -- save the block diagram picture (read-only).
#   vivado -mode gui -source export_bd_svg.tcl   (write_bd_layout needs the GUI; the window closes itself)
set here [file dirname [file normalize [info script]]]
open_project [file normalize $here/../Zybo-Z7-HW/Zybo-Z7-HW.xpr]
open_bd_design [get_files design_1.bd]
write_bd_layout -force -format svg -file [file normalize $here/../../design_1_stripped.svg]
close_project
exit
