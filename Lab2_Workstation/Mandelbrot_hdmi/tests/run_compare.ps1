param([switch]$FullFrame)
$ErrorActionPreference = 'Stop'
$tests = $PSScriptRoot
$src = Join-Path $tests '../Zybo-Z7-HW/ip_repo/mandelbrot_driver_1_0/src'
$bin = 'C:/Xilinx/Vivado/2024.1/bin'
$work = Join-Path $tests 'work'
New-Item -ItemType Directory -Force $work | Out-Null
Push-Location $work
try {
 & python "$tests/check_inside_bound.py"
 if ($LASTEXITCODE -ne 0) { throw 'numerical bound check failed' }
 & "$bin/xvlog.bat" --sv "$tests/baseline_engine.v" "$tests/baseline_solver.v" "$src/mandel_engine.v" "$src/mandel_solver.v" "$tests/tb_inside_compare.sv" "$tests/tb_inside_vectors.sv" "$tests/tb_inside_full.sv"
 if ($LASTEXITCODE -ne 0) { throw 'xvlog failed' }
 & "$bin/xelab.bat" tb_inside_vectors -s inside_vectors
 if ($LASTEXITCODE -ne 0) { throw 'classifier elaboration failed' }
 & "$bin/xsim.bat" inside_vectors -runall -log vectors.log
 if ($LASTEXITCODE -ne 0 -or !(Select-String -Path vectors.log -Pattern 'ALL CLASSIFIER VECTORS PASSED' -Quiet)) { throw 'classifier simulation failed' }
 & "$bin/xelab.bat" tb_inside_compare -s inside_compare
 if ($LASTEXITCODE -ne 0) { throw 'xelab failed' }
 & "$bin/xsim.bat" inside_compare -runall -log compare.log
 if ($LASTEXITCODE -ne 0 -or !(Select-String -Path compare.log -Pattern 'ALL ENGINE COMPARISONS PASSED' -Quiet)) { throw 'simulation failed' }
 if ($FullFrame) {
  & "$bin/xelab.bat" tb_inside_full -s inside_full
  if ($LASTEXITCODE -ne 0) { throw 'full-frame elaboration failed' }
  & "$bin/xsim.bat" inside_full -runall -log full.log
  if ($LASTEXITCODE -ne 0 -or !(Select-String -Path full.log -Pattern 'FULL FRAME PASSED' -Quiet)) { throw 'full-frame simulation failed' }
 }
} finally { Pop-Location }
