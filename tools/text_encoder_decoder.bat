@echo off
:menu
cls
echo ============================
echo       Text Encoder/Decoder
echo ============================
echo 1. Encode Text
echo 2. Decode Text
echo 3. Exit
echo ============================
set /p choice="Select an option: "

if %choice%==1 goto encode
if %choice%==2 goto decode
if %choice%==3 goto exit

echo Invalid choice. Try again.
pause
goto menu

:encode
cls
echo ============================
echo       Encode Text
echo ============================
echo Enter text to encode:
set /p text="Text: "
set "encoded="
for /l %%i in (0,1,255) do (
    set "char=!text:~%%i,1!"
    if "!char!"=="" goto end_encode
    for /f "delims=" %%a in ('cmd /c "echo|set /p=%%char%%"') do set "ascii=%%a"
    set "encoded=!encoded! !ascii!"
)
:end_encode
echo ============================
echo Encoded text: %encoded%
echo ============================
echo Press Enter to return to the menu...
pause
goto menu

:decode
cls
echo ============================
echo       Decode Text
echo ============================
echo Enter encoded text (space-separated ASCII values):
set /p encoded="Encoded Text: "
set "decoded="
for %%a in (%encoded%) do (
    for /f "delims=" %%b in ('cmd /c "echo|set /p=%%a"') do set "char=%%b"
    set "decoded=!decoded!!char!"
)
echo ============================
echo Decoded text: %decoded%
echo ============================
echo Press Enter to return to the menu...
pause
goto menu

:exit
cd..
start toolbox.bat
timeout /t 1 /nobreak >nul
exit