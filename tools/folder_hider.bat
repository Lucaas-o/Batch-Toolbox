@echo off
title Folder Hider Tool
color 0A
echo.
echo This tool hides or reveals folders on your computer.
echo Note: Hidden folders won't appear in File Explorer unless configured to show them.
echo.
timeout /t 1 >nul
cls

:loop
set "action="
set /p action="Hide or reveal a folder? (h/r/q to quit): "
if /i "%action%"=="q" goto :end
if /i "%action%"=="h" (
    set "folder="
    set /p folder="Enter folder path to hide: "
    if not exist "%folder%" (
        echo Folder not found. Please check the path.
        timeout /t 1 >nul
        goto loop
    )
    attrib +h "%folder%"
    echo Folder hidden: %folder%
) else if /i "%action%"=="r" (
    set "folder="
    set /p folder="Enter folder path to reveal: "
    if not exist "%folder%" (
        echo Folder not found. Please check the path.
        timeout /t 1 >nul
        goto loop
    )
    attrib -h "%folder%"
    echo Folder revealed: %folder%
) else (
    echo Invalid choice. Use 'h' to hide, 'r' to reveal, or 'q' to quit.
    timeout /t 1 >nul
    goto loop
)

set "more="
set /p more="Process another folder? (y/n): "
if /i "%more%"=="y" goto loop

:end
echo Returning to main menu...
timeout /t 1 >nul
start "" toolbox.bat
exit /b 0