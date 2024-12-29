@echo off
title File Hider
echo.
echo This tool allows you to hide or reveal files on your computer.
echo.
pause
cls

:loop
set /p action="Do you want to hide or reveal a file? (h/r): "

if /i "%action%"=="h" (
    set /p file="Enter file path to hide: "
    attrib +h "%file%"
    echo File hidden.
) else if /i "%action%"=="r" (
    set /p file="Enter file path to reveal: "
    attrib -h "%file%"
    echo File revealed.
) else (
    echo Invalid choice. Please enter "h" to hide or "r" to reveal.
    goto loop
)

set /p more="Do you want to hide or reveal another file? (y/n): "
if /i "%more%"=="y" goto loop

pause
start "" toolbox.bat
exit