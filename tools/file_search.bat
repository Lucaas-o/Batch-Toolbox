@echo off
cls
set /p search="Enter file name to search: "
dir /s /b *%search%*
pause
exit