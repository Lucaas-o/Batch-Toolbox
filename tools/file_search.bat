@echo off
title File Search
echo.
echo This tool allows you to search for files on your computer.
echo.
pause

cls
set /p search="Enter file name to search: "
dir /s /b *%search%*

pause
start "" toolbox.bat
exit