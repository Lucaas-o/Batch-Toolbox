# Batch Toolbox Menu

Welcome to the **Batch Toolbox Menu**! This project provides a customizable batch script menu to help users execute multiple tools, scripts, or commands from a single, user-friendly interface.

## Features

- **Customizable Menu:** Easily add, edit, or remove options to suit your needs.
- **Simple Navigation:** Navigate through options with keyboard inputs.
- **Command Execution:** Run predefined scripts or tools directly from the menu.
- **Lightweight:** No dependencies, just batchs files.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/LucasElBobo/Batch-Toolbox.git
   ```
2. Navigate to the directory:
   ```bash
   cd Batch-Toolbox
   ```
3. Run the script:
   ```bash
   start toolbox.bat
   ```
4. Follow the on-screen instructions to choose a tool or option.

## Configuration

To customize the menu options:

1. Open `toolbox.bat` in a text editor.
2. Locate the section marked `:menu`.
3. Add your desired options and corresponding commands.
4. Create your files in the "tools\" directory, and edit them.

Example:
```batch
:menu
ECHO 1. Option One
ECHO 2. Option Two
ECHO 3. Exit
SET /P CHOICE="Choose an option: "
IF "%CHOICE%"=="1" GOTO tools\OPTION1
IF "%CHOICE%"=="2" GOTO tools\OPTION2
IF "%CHOICE%"=="3" GOTO tools\END
```

## License

This project is licensed under the MIT License.