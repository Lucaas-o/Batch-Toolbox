@echo off
cls
echo Enter IP address:
set /p ip="IP: "
start https://ipinfo.io/%ip%
pause
exit
