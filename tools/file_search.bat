@echo off
title File Search Tool
color 0A
echo.
echo This tool searches for files on your computer.
echo.
timeout /t 1 >nul
cls

:loop
set "search="
set /p search="Enter file name to search (or 'q' to quit): "
if /i "%search%"=="q" goto :end
if not defined search (
    echo No input provided. Please enter a file name.
    timeout /t 1 >nul
    goto loop
)
echo Searching for *%search%*...
dir "%search%" /s /b /p 2>nul
if errorlevel 1 (
    echo No files found matching *%search%*.
)

set "more="
set /p more="Search again? (y/n): "
if /i "%more%"=="y" goto loop

:end
echo Returning to main menu...
timeout /t 1 >nul
start "" toolbox.bat
exit /b 0