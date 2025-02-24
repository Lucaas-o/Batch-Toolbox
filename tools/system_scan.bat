@echo off
title System Scan Tool
color 0A

:: Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This tool requires Administrator privileges.
    echo Please run as Administrator.
    timeout /t 3 >nul
    start "" toolbox.bat
    exit /b 0
)

echo.
echo This tool performs a comprehensive system scan.
echo.
timeout /t 1 >nul
cls

echo Running System File Checker (SFC)...
sfc /scannow
echo SFC scan complete.
timeout /t 2 >nul

echo Running Check Disk (chkdsk)...
chkdsk C: /f /r
echo Check Disk scheduled. Restart may be required.
timeout /t 2 >nul

echo Running DISM Health Checks...
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo DISM operations complete.
timeout /t 2 >nul

echo Running Windows Defender Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
echo Defender scan complete.
timeout /t 2 >nul

echo Displaying System Information...
systeminfo
timeout /t 2 >nul

echo Resetting Network Settings...
netsh int ip reset
netsh winsock reset
echo Network reset complete. Restart may be required.

echo System scan completed. Press any key to return to the menu...
pause >nul
start "" toolbox.bat
exit /b 0