@echo off
echo This script requires Administrator privileges to run.
echo Please run as Administrator to continue.
pause

sfc /scannow
echo System scan complete.
pause