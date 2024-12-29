@echo off
cls
:loop
set /p file="Enter file path to hide: "
attrib +h "%file%"
echo File hidden.

set /p more="Do you want to hide another file? (y/n): "
if /i "%more%"=="y" goto loop

pause
@echo off 
cd..
start toolbox.bat
timeout /t 1 /nobreak >nul
exit
