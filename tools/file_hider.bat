@echo off
cls
set /p file="Enter file path to hide: "
attrib +h "%file%"
echo File hidden.
pause
exit
