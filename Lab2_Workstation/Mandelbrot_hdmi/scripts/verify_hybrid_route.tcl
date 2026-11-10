set here [file dirname [file normalize [info script]]]
set hw [file normalize $here/../Zybo-Z7-HW]
set out [file normalize $here/../..]
open_checkpoint $hw/Zybo-Z7-HW.runs/impl_1/design_1_wrapper_routed.dcp
report_route_status -file $out/route_status_hybrid_w18_d25_l2.rpt
set all [get_cells -hier -filter {IS_PRIMITIVE}]
set f [open $out/precision/hybrid18/physical_lane_mapping.csv w]
puts $f "lane,fabric_products,dsp48,lut_primitives"
for {set i 0} {$i < 27} {incr i} {
    set literal [format {SOLV[%d].u_solver/} $i]
    set dsp 0
    set lut 0
    foreach cell $all {
        if {[string first $literal [get_property NAME $cell]] < 0} {continue}
        set ref [get_property REF_NAME $cell]
        if {$ref eq "DSP48E1"} {incr dsp}
        if {[string match LUT* $ref]} {incr lut}
    }
    set fabric [expr {$i >= 25}]
    if {$dsp != ($fabric ? 0 : 3) || $lut == 0} {error "Wrong mapped solver lane $i: DSP=$dsp LUT=$lut"}
    puts $f "$i,$fabric,$dsp,$lut"
}
close $f
puts "HYBRID_MAPPING_PASS 25 native DSP lanes, 2 zero-DSP fabric lanes"
close_design
