@echo off
cls
echo Enter IP address:
set /p ip="IP: "
start https://ipinfo.io/%ip%
pause
@echo off 
cd..
start toolbox.bat
timeout /t 1 /nobreak >nul
exit
