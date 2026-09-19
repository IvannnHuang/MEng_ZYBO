Instructions for running the conversion script: (UNTESETED)
1. Preview changes:
powershell -ExecutionPolicy Bypass -File .\lorenz_ip_hdmi\scripts\Convert-VitisMakefiles.ps1 `
  -Root .\lorenz_ip_hdmi\ip_repo `
  -WhatIf

2. Apply them:
powershell -ExecutionPolicy Bypass -File .\lorenz_ip_hdmi\scripts\Convert-VitisMakefiles.ps1 `
  -Root .\lorenz_ip_hdmi\ip_repo

3. Process all custom and generated driver Makefiles:
powershell -ExecutionPolicy Bypass -File .\lorenz_ip_hdmi\scripts\Convert-VitisMakefiles.ps1 `
  -Root .\lorenz_ip_hdmi

4. Only use native Windows commands if hte build explicitly runs with SHELL=CMD:
powershell -ExecutionPolicy Bypass -File .\lorenz_ip_hdmi\scripts\Convert-VitisMakefiles.ps1 `
  -Root .\lorenz_ip_hdmi `
  -WindowsCommands