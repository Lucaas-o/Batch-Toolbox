@echo off
title File Hider Tool
color 0A
echo.
echo This tool hides or reveals files on your computer.
echo.
timeout /t 1 >nul
cls

:loop
set "action="
set /p action="Hide or reveal a file? (h/r/q to quit): "
if /i "%action%"=="q" goto :end
if /i "%action%"=="h" (
    set "file="
    set /p file="Enter file path to hide: "
    if not exist "%file%" (
        echo File not found. Please check the path.
        timeout /t 1 >nul
        goto loop
    )
    attrib +h "%file%"
    echo File hidden: %file%
) else if /i "%action%"=="r" (
    set "file="
    set /p file="Enter file path to reveal: "
    if not exist "%file%" (
        echo File not found. Please check the path.
        timeout /t 1 >nul
        goto loop
    )
    attrib -h "%file%"
    echo File revealed: %file%
) else (
    echo Invalid choice. Use 'h' to hide, 'r' to reveal, or 'q' to quit.
    timeout /t 1 >nul
    goto loop
)

set "more="
set /p more="Process another file? (y/n): "
if /i "%more%"=="y" goto loop

:end
echo Returning to main menu...
timeout /t 1 >nul
start "" toolbox.bat
exit /b 0