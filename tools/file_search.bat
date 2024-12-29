@echo off
cls
set /p search="Enter file name to search: "
dir /s /b *%search%*
pause
@echo off 
cd..
start toolbox.bat
timeout /t 1 /nobreak >nul
exit