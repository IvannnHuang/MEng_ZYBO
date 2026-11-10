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
 & "$bin/xvlog.bat" --sv "$src/mandel_solver.v" "$tests/tb_solver_precision.sv" "$tests/tb_lut_solver.sv"
 if($LASTEXITCODE -ne 0){throw 'LUT solver compilation failed'}
 & "$bin/xelab.bat" tb_lut_solver -s tb_lut_solver
 if($LASTEXITCODE -ne 0){throw 'LUT solver elaboration failed'}
 & "$bin/xsim.bat" tb_lut_solver -runall -log tb_lut_solver.log
 if($LASTEXITCODE -ne 0 -or !(Select-String -Path tb_lut_solver.log -Pattern 'LUT SOLVER MODEL PASSED' -Quiet)){throw 'LUT solver check failed'}
}finally{Pop-Location}
