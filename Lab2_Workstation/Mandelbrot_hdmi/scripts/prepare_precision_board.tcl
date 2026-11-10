# Refresh the existing workstation Vitis platform/application from this branch's XSA.
# Run with Vitis closed: xsct prepare_precision_board.tcl
set here [file dirname [file normalize [info script]]]
set lab [file normalize $here/../..]
set ws [file normalize $lab/Mandelbrot_workspace_workstation]
set xsa [file normalize $here/../Zybo-Z7-HW/design_1_wrapper.xsa]
if {![file exists $xsa]} { error "Missing XSA: $xsa" }
setws $ws
platform active design_1_wrapper
platform config -updatehw $xsa
platform generate
importprojects [file join $ws Zybo-Z7-10-HDMI]
app build -name Zybo-Z7-10-HDMI
# Headless app builds can leave the GUI launch cache at the preceding bitstream.
set launch_dir [file join $ws Zybo-Z7-10-HDMI _ide bitstream]
file mkdir $launch_dir
file copy -force [file join $ws design_1_wrapper hw design_1_wrapper.bit] [file join $launch_dir design_1_wrapper.bit]
puts "PRECISION_BOARD_READY: platform refreshed and application built from $ws"
