@echo off
cd /d "%~dp0Fraud detection system"
if not exist "run.bat" (
    echo Folder "Fraud detection system" not found.
    pause
    exit /b 1
)
call run.bat
