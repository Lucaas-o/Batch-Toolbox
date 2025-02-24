@echo off
title Password Generator Tool
color 0A
setlocal enabledelayedexpansion

echo.
echo This tool generates a random password.
echo.
timeout /t 1 >nul
cls

:LengthInput
set "length="
set /p length="Enter password length (8-32, or 'q' to quit): "
if /i "%length%"=="q" goto :end
if not defined length (
    echo Please enter a valid number.
    timeout /t 1 >nul
    goto LengthInput
)

if %length% lss 8 (
    echo Length must be at least 8 characters.
    timeout /t 1 >nul
    goto LengthInput
)
if %length% gtr 32 (
    echo Length cannot exceed 32 characters.
    timeout /t 1 >nul
    goto LengthInput
)

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
set "password="
for /l %%i in (1,1,%length%) do (
    set /a "rand=!random! %% 70"
    for %%j in (!rand!) do set "password=!password!!chars:~%%j,1!"
)

echo.
echo Generated Password: !password!
echo.

set "saveFile="
set /p saveFile="Save to file? (y/n): "
if /i "!saveFile!"=="y" (
    echo !password! > generated_password.txt
    echo Password saved to generated_password.txt
)

set "more="
set /p more="Generate another password? (y/n): "
if /i "!more!"=="y" goto LengthInput

:end
echo Returning to main menu...
timeout /t 1 >nul
start "" toolbox.bat
exit /b 0