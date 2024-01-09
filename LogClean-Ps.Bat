REM Script: LogClean-Ps

@echo off
echo.

:: Initialization
echo Initialization Started...
cd /d "%~dp0"
echo ...Initialization Completed.
echo.
timeout /t 1 /nobreak >nul

:: Run SCript
echo Starting Cleaning...
echo.
timeout /t 1 /nobreak >nul
PowerShell -NoProfile -ExecutionPolicy Bypass -File "logclean-ps.ps1"
echo.
echo Cleaning Completed.
timeout /t 2 /nobreak >nul
