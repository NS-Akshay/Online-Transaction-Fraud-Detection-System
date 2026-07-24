# Run the Fraud Detection app from the inner project folder
$inner = Join-Path $PSScriptRoot "Fraud detection system"
if (-not (Test-Path $inner)) {
    Write-Host "Project folder not found: $inner" -ForegroundColor Red
    exit 1
}
Set-Location $inner
& (Join-Path $PSScriptRoot "Fraud detection system\run.ps1") @args
