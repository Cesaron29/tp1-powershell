# ==========================================
# TP: Información de PowerShell, OS y PC
# ==========================================

Write-Host "----------------------------------------" -ForegroundColor Cyan
Write-Host " 1. VERSION DE POWERSHELL" -ForegroundColor Yellow
Write-Host "----------------------------------------" -ForegroundColor Cyan
$PSVersionTable

Write-Host "`n----------------------------------------" -ForegroundColor Cyan
Write-Host " 2. CONFIGURACION DE PERMISIVIDAD (Execution Policy)" -ForegroundColor Yellow
Write-Host "----------------------------------------" -ForegroundColor Cyan
Get-ExecutionPolicy -List

Write-Host "`n----------------------------------------" -ForegroundColor Cyan
Write-Host " 3. INFORMACION DE LA EDICION DEL SISTEMA OPERATIVO" -ForegroundColor Yellow
Write-Host "----------------------------------------" -ForegroundColor Cyan
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, OSArchitecture, BuildNumber

Write-Host "`n----------------------------------------" -ForegroundColor Cyan
Write-Host " 4. INFORMACION COMPLETA DE LA PC (CMD: systeminfo)" -ForegroundColor Yellow
Write-Host "----------------------------------------" -ForegroundColor Cyan
cmd.exe /c systeminfo
