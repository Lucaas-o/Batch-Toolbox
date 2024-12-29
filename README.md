# Batch Toolbox Menu

Welcome to the **Batch Toolbox Menu**! This project provides a customizable batch script menu to help users execute multiple tools, scripts, or commands from a single, user-friendly interface.

## Features

- **Customizable Menu:** Easily add, edit, or remove options to suit your needs.
- **Simple Navigation:** Navigate through options with keyboard inputs.
- **Command Execution:** Run predefined scripts or tools directly from the menu.
- **Lightweight:** No dependencies, just a single batch file.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/batch-toolbox-menu.git
   ```
2. Navigate to the directory:
   ```bash
   cd batch-toolbox-menu
   ```
3. Run the script:
   ```bash
   batch-toolbox-menu.bat
   ```
4. Follow the on-screen instructions to choose a tool or option.

## Configuration

To customize the menu options:

1. Open `batch-toolbox-menu.bat` in a text editor.
2. Locate the section marked `:MENU`.
3. Add your desired options and corresponding commands.

Example:
```batch
:MENU
ECHO 1. Option One
ECHO 2. Option Two
ECHO 3. Exit
SET /P CHOICE="Choose an option: "
IF "%CHOICE%"=="1" GOTO OPTION1
IF "%CHOICE%"=="2" GOTO OPTION2
IF "%CHOICE%"=="3" GOTO END
```  

## Additional Tools

Here are pre-built scripts for additional tools you can add to your menu:

### Folder Hider
Save the following as `folder_hider.bat`:
```batch
@echo off
cls
set /p folder="Enter folder path to hide: "
attrib +h "%folder%"
echo Folder hidden.
pause
exit
```

### File Search
Save the following as `file_search.bat`:
```batch
@echo off
cls
set /p search="Enter file name to search: "
dir /s /b *%search%*
pause
exit
```

### System Scan
Save the following as `system_scan.bat`:
```batch
@echo off
cls
echo Scanning system...
echo ============================
echo System Information:
systeminfo
echo ============================
pause
exit
```

### Text Encoder
Save the following as `text_encoder.bat`:
```batch
@echo off
cls
echo Enter text to encode:
set /p text="Text: "
set "encoded="
for /l %%i in (0,1,255) do (
    set "char=!text:~%%i,1!"
    if "!char!"=="" goto end_encoder
    set /a ascii=^!char!
    set "encoded=!encoded! !ascii!"
)
:end_encoder
echo Encoded text: %encoded%
pause
exit
```

### Adding These Tools

To include these tools in your main menu:

1. Place each `.bat` file in the same directory as `batch-toolbox-menu.bat`.
2. Update the main menu script to call the corresponding files.

Example:
```batch
if %choice%==3 call folder_hider.bat
if %choice%==4 call file_search.bat
if %choice%==5 call system_scan.bat
if %choice%==7 call text_encoder.bat
```

## Contributing

Contributions are welcome! If you have suggestions for improvement or want to report a bug, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

Thanks to the batch scripting community for inspiring this project.
