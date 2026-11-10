# chip_view.tcl -- open the implemented design in the GUI and colour each Mandelbrot iterator
# on the Device (chip) view, for screenshots. Read-only.
#   vivado -mode gui -source chip_view.tcl     (take the screenshot, then close Vivado)
set here [file dirname [file normalize [info script]]]
open_project [file normalize $here/../Zybo-Z7-HW/Zybo-Z7-HW.xpr]
open_run impl_1
set base design_1_i/mandelbrot_driver_0/inst/engine_i
set n 0
# Highlight every solver; reuse the eight verified palette colours for large arrays.
for {set i 0} {$i < 255} {incr i} {
    set c [get_cells -quiet -hier -filter "IS_PRIMITIVE && NAME =~ ${base}/SOLV?${i}?.u_solver/*"]
    if {$c eq ""} { break }
    highlight_objects -color_index [expr {($i % 8) + 1}] $c
    incr n
}
puts "CHIP: highlighted $n iterators"
set f [open $here/chip_view_ready.txt w]; puts $f $n; close $f
