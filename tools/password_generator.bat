@echo off
title Password Generator
echo.
echo This tool generates a random password.
echo.
pause
cls

setlocal enabledelayedexpansion
:loop
:: Set password length (you can adjust this number)
set /a length=12
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

:: Copy the password to clipboard
echo !password! | clip
echo Password copied to clipboard.

:: Ask if the user wants to generate another password
set /p more="Do you want to generate another password? (y/n): "
if /i "%more%"=="y" goto loop

pause
start "" toolbox.bat
exit
