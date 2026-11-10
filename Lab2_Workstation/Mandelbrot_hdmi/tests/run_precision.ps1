param([switch]$FullFrame, [ValidateSet(18,21,24,27)][int]$SolverWidth=24, [ValidateRange(1,25)][int]$Solvers=8)
$ErrorActionPreference = 'Stop'
$tests=$PSScriptRoot
$src=Join-Path $tests '../Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src'
$bin='C:/Xilinx/Vivado/2024.1/bin'
$work=Join-Path $tests 'work'
New-Item -ItemType Directory -Force $work | Out-Null
Push-Location $work
try {
 & python "$tests/precision_model.py"
 if($LASTEXITCODE -ne 0){throw 'precision model failed'}
 $selected=Join-Path $work 'selected_precision.sv'
 @"
``timescale 1ns/1ps
module selected_precision_engine;
 tb_precision_engine #(.SW($SolverWidth), .NSOLV($Solvers)) test();
endmodule
module selected_precision_full;
 tb_precision_full #(.SW($SolverWidth), .NSOLV($Solvers)) test();
endmodule
"@ | Set-Content -LiteralPath $selected -Encoding ASCII
 & "$bin/xvlog.bat" --sv "$selected"  "$src/mandel_engine.v" "$src/mandel_solver.v" "$tests/precision_baseline_engine.v" "$tests/tb_solver_precision.sv" "$tests/tb_precision_engine.sv" "$src/../hdl/mandelbrot_driver_slave_lite_v1_0_S00_AXI.v" "$tests/tb_precision_format.sv" "$tests/tb_precision_full.sv"
 if($LASTEXITCODE -ne 0){throw 'precision compilation failed'}
 $tops=@('tb_solver_precision','tb_precision_engine','tb_precision_format')
 if($FullFrame){$tops+='tb_precision_full'}
 foreach($top in $tops){
  $elabTop=switch($top){
   'tb_precision_engine' {'selected_precision_engine'}
   'tb_precision_full' {'selected_precision_full'}
   default {$top}
  }
  & "$bin/xelab.bat" $elabTop -s $top
  if($LASTEXITCODE -ne 0){throw 'precision elaboration failed'}
  & "$bin/xsim.bat" $top -runall -log "$top.log"
  $success=switch($top){
   'tb_solver_precision' {'ALL SOLVER PRECISIONS PASSED'}
   'tb_precision_engine' {'PRECISION ENGINE PASSED'}
   'tb_precision_format' {'PRECISION FORMAT REGISTER PASSED'}
   'tb_precision_full' {'PRECISION FULL FRAME PASSED'}
  }
  if($LASTEXITCODE -ne 0 -or !(Select-String -Path "$top.log" -Pattern $success -Quiet)){throw 'precision simulation failed'}
 }
}finally{Pop-Location}
