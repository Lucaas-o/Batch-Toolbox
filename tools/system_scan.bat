@echo off
:: Check if the script is running with administrator privileges
NET SESSION >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script requires Administrator privileges to run.
    echo Please run as Administrator to continue.
    pause
    exit
)

title System Scan
echo.
echo This tool performs a system scan to check for errors and issues.
echo.
pause
cls

echo Running System File Checker (sfc)...
sfc /scannow
echo System scan complete.
pause

echo Running Check Disk (chkdsk)...
chkdsk C: /f /r
echo Check Disk complete.
pause

echo Running Deployment Imaging Service and Management Tool (DISM)...
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo DISM complete.
pause

echo Running Windows Defender Antivirus Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
echo Windows Defender scan complete.
pause

echo Displaying System Information...
systeminfo
pause

echo Resetting Network Diagnostics...
netsh int ip reset
netsh winsock reset
echo Network Diagnostics reset complete.

echo Press Enter to close this window.

pause
start "" toolbox.bat
exit