set here [file dirname [file normalize [info script]]]
set ws [file normalize $here/../../Mandelbrot_workspace_workstation]
setws $ws
importprojects [file join $ws Zybo-Z7-10-HDMI]
app build -name Zybo-Z7-10-HDMI
# Headless app builds can leave the GUI launch cache at the preceding bitstream.
set launch_dir [file join $ws Zybo-Z7-10-HDMI _ide bitstream]
file mkdir $launch_dir
file copy -force [file join $ws design_1_wrapper hw design_1_wrapper.bit] [file join $launch_dir design_1_wrapper.bit]
puts "PRECISION_APP_BUILT"
