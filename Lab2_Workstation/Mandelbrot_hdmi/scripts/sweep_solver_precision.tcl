# OOC synthesis only: isolate multiplier mapping; no routed timing or board claims.
set here [file dirname [file normalize [info script]]]
set src [file normalize $here/../Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src]
set out [file normalize $here/../../precision]
file mkdir $out
set csv [open $out/solver_synthesis.csv w]
puts $csv "width,fractional_bits,dsp48,lut_primitives,ff_primitives"
foreach w {27 24 21 18} {
    set f [expr {$w-4}]
    create_project -in_memory -part xc7z010clg400-1
    read_verilog $src/mandel_solver.v
    synth_design -top mandel_solver -part xc7z010clg400-1 -mode out_of_context -generic [list W=$w F=$f]
    report_utilization -file $out/solver_w${w}_synth.rpt
    set dsp [llength [get_cells -hier -filter {REF_NAME == DSP48E1}]]
    set lut [llength [get_cells -hier -filter {REF_NAME =~ LUT*}]]
    set ff [llength [get_cells -hier -filter {REF_NAME =~ FD*}]]
    puts $csv "$w,$f,$dsp,$lut,$ff"
    flush $csv
    puts "PRECISION width=$w F=$f DSP=$dsp LUT=$lut FF=$ff"
    close_project
}
close $csv
