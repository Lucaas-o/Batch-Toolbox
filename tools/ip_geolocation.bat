@echo off
title IP Geolocation
echo.
echo This tool allows you to find the geolocation of an IP address.
echo.
pause
cls

:loop
echo Enter IP address:
set /p ip="IP: "
start https://ipinfo.io/%ip%

set /p more="Do you want to find another IP address? (y/n): "
if /i "%more%"=="y" goto loop

pause
start "" toolbox.bat
exit