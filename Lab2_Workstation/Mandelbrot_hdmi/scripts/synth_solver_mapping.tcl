# Isolated area comparison, not a routed timing or board result.
set here [file dirname [file normalize [info script]]]
set src [file normalize $here/../Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src]
set out [file normalize $here/../../precision/hybrid18]
file mkdir $out
set csv [open $out/solver_mapping.csv w]
puts $csv "fabric_products,dsp48,lut_primitives,ff_primitives"
foreach fabric {0 1} {
    create_project -in_memory -part xc7z010clg400-1
    read_verilog $src/mandel_solver.v
    synth_design -top mandel_solver -mode out_of_context -part xc7z010clg400-1 -generic [list W=18 F=14 LUT_MULT=$fabric]
    report_utilization -file $out/solver_fabric${fabric}_synth.rpt
    set dsp [llength [get_cells -hier -filter {REF_NAME == DSP48E1}]]
    set lut [llength [get_cells -hier -filter {REF_NAME =~ LUT*}]]
    set ff [llength [get_cells -hier -filter {REF_NAME =~ FD*}]]
    if {($fabric == 0 && $dsp != 3) || ($fabric == 1 && $dsp != 0)} {error "Unexpected DSP mapping: fabric=$fabric DSP=$dsp"}
    puts $csv "$fabric,$dsp,$lut,$ff"
    flush $csv
    puts "SOLVER_MAPPING fabric=$fabric DSP=$dsp LUT=$lut FF=$ff"
    close_project
}
close $csv
