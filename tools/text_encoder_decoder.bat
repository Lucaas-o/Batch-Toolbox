@echo off
:menu
cls
echo ============================
echo       Text Encoder/Decoder
echo ============================
echo 1. Encode Text
echo 2. Decode Text
echo 3. Exit
set /p choice="Select an option: "

if %choice%==1 goto encode
if %choice%==2 goto decode
if %choice%==3 exit

echo Invalid choice. Try again.
pause
goto menu

:encode
cls
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
echo Encoded text: %encoded%
pause
goto menu

:decode
cls
echo Enter encoded text (space-separated ASCII values):
set /p encoded="Encoded Text: "
set "decoded="
for %%i in (%encoded%) do (
    for /f "delims=" %%a in ('cmd /c "echo|set /p=%%i"') do set "char=%%a"
    set "decoded=!decoded!!char!"
)
echo Decoded text: %decoded%
pause
goto menu