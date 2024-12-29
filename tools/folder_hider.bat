@echo off
:loop
set /p folder="Enter folder path to hide: "
attrib +h "%folder%"
echo Folder hidden.

set /p more="Do you want to hide another folder? (y/n): "
if /i "%more%"=="y" goto loop

pause
@echo off 
cd..
start toolbox.bat
timeout /t 1 /nobreak >nul
exit