@echo off
set /p folder="Enter folder path to hide: "
attrib +h "%folder%"
echo Folder hidden.