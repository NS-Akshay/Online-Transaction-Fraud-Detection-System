# Fix broken venv (pydantic_core) - runs the inner fix script
$inner = Join-Path $PSScriptRoot "Fraud detection system"
$fix = Join-Path $inner "fix_venv.ps1"
if (-not (Test-Path $fix)) {
    Write-Host "Not found: $fix" -ForegroundColor Red
    exit 1
}
Set-Location $inner
& $fix
