@echo off
title Text Encoder/Decoder Tool
color 0A
echo.
echo This tool encodes text to ASCII or decodes ASCII back to text.
echo.
timeout /t 1 >nul

:menu
cls
echo ============================
echo       Text Encoder/Decoder
echo ============================
echo 1. Encode Text to ASCII
echo 2. Decode ASCII to Text
echo 3. Exit
echo ============================
set "choice="
set /p choice="Select an option (1-3): "

if "%choice%"=="1" goto encode
if "%choice%"=="2" goto decode
if "%choice%"=="3" goto exit

echo Invalid choice. Please select 1, 2, or 3.
timeout /t 2 >nul
goto menu

:encode
cls
echo ============================
echo       Encode Text
echo ============================
set "text="
set /p text="Enter text to encode: "
if not defined text (
    echo No text entered. Please try again.
    timeout /t 1 >nul
    goto encode
)
set "encoded="
for /l %%i in (0,1,255) do (
    for %%c in ("!text:~%%i,1!") do (
        if "%%~c"=="" goto :end_encode
        set /a "ascii=0+%%c"
        set "encoded=!encoded! !ascii!"
    )
)
:end_encode
echo Encoded text: %encoded%
pause
goto menu

:decode
cls
echo ============================
echo       Decode Text
echo ============================
set "encoded="
set /p encoded="Enter space-separated ASCII values: "
if not defined encoded (
    echo No input provided. Please try again.
    timeout /t 1 >nul
    goto decode
)
set "decoded="
for %%a in (%encoded%) do (
    cmd /c exit %%a
    set "decoded=!decoded!!=exitcodeascii!"
)
echo Decoded text: %decoded%
pause
goto menu

:exit
echo Returning to main menu...
timeout /t 1 >nul
start "" toolbox.bat
exit /b 0