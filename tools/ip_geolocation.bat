@echo off
title IP Geolocation Tool
color 0A
echo.
echo This tool opens a browser to find the geolocation of an IP address.
echo.
timeout /t 1 >nul
cls

:loop
set "ip="
echo Enter IP address (or 'q' to quit):
set /p ip="IP: "
if /i "%ip%"=="q" goto :end
if not defined ip (
    echo No IP entered. Please try again.
    timeout /t 1 >nul
    goto loop
)
start "" "https://ipinfo.io/%ip%"
echo Looking up %ip% in your default browser...

set "more="
set /p more="Check another IP? (y/n): "
if /i "%more%"=="y" goto loop

:end
echo Returning to main menu...
timeout /t 1 >nul
start "" toolbox.bat
exit /b 0