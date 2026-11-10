set here [file dirname [file normalize [info script]]]
set core [ipx::open_core [file normalize $here/../Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/component.xml]]
source [file normalize $here/../Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/xgui/mandelbrot_driver_v1_0.tcl]
set p [ipx::get_user_parameters SOLVER_W -of_objects $core]
puts "PARAM_OBJECT=$p"
puts "PARAM_VALUE=[get_property value $p]"
puts "VALIDATE=[validate_PARAM_VALUE.SOLVER_W $p]"
ipx::unload_core $core
