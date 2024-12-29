@echo off
title Password Generator
echo.
echo This tool generates a random password.
echo.
pause
cls

setlocal enabledelayedexpansion
:loop
:: Set password length (16 characters now)
set /a length=16
set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&"
set "password="

:: Generate the password
for /l %%i in (1,1,%length%) do (
    set /a rand=!random! %% 68
    set "password=!password!!chars:~!rand!,1!"
)

:: Output the generated password
echo Generated Password: !password!

:: Save the password to a text file
echo !password! > generated_password.txt
echo Password saved to generated_password.txt

:: Ask if the user wants to generate another password
set /p more="Do you want to generate another password? (y/n): "
if /i "%more%"=="y" goto loop

pause
start "" toolbox.bat
exit