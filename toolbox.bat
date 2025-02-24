@echo off
title Batch Toolbox Menu
color 0A
echo.
echo Welcome to Batch Toolbox - A collection of handy batch utilities.
echo Current Date: %DATE%
echo.

:menu
cls
echo ============================
echo        Tool Box
echo ============================
echo 1. IP Geolocation
echo 2. File Hider
echo 3. Folder Hider
echo 4. File Search
echo 5. System Scan
echo 6. Password Generator
echo 7. Text Encoder/Decoder
echo 8. Exit
echo ============================
set "choice="
set /p choice="Select an option (1-8): "

if not defined choice (
    echo No input detected. Please try again.
    timeout /t 2 >nul
    goto menu
)

if "%choice%"=="1" call tools\ip_geolocation.bat
if "%choice%"=="2" call tools\file_hider.bat
if "%choice%"=="3" call tools\folder_hider.bat
if "%choice%"=="4" call tools\file_search.bat
if "%choice%"=="5" call tools\system_scan.bat
if "%choice%"=="6" call tools\password_generator.bat
if "%choice%"=="7" call tools\text_encoder_decoder.bat
if "%choice%"=="8" exit /b 0

echo Invalid option. Please select a number between 1 and 8.
timeout /t 2 >nul
goto menu