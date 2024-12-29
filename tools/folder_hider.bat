@echo off
title Folder Hider
echo.
echo This tool allows you to hide or reveal folders.
echo.
echo Note: Hidden folders will not be visible in File Explorer.
echo.
pause

:loop
set /p action="Do you want to hide or reveal a folder? (h/r): "

if /i "%action%"=="h" (
    set /p folder="Enter folder path to hide: "
    attrib +h "%folder%"
    echo Folder hidden.
) else if /i "%action%"=="r" (
    set /p folder="Enter folder path to reveal: "
    attrib -h "%folder%"
    echo Folder revealed.
) else (
    echo Invalid choice. Please enter "h" to hide or "r" to reveal.
    goto loop
)

set /p more="Do you want to hide or reveal another folder? (y/n): "
if /i "%more%"=="y" goto loop

pause
start "" toolbox.bat
exit