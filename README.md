# Batch Toolbox Menu

Welcome to the **Batch Toolbox Menu**! This project provides a versatile, user-friendly batch script interface for running various utility tools on Windows systems.

## Features

- **Interactive Menu:** Choose from a range of tools with simple numeric inputs.
- **Robust Tools:**
  - **IP Geolocation:** Lookup IP address details via ipinfo.io.
  - **File/Folder Hider:** Toggle visibility of files and folders.
  - **File Search:** Find files across your system.
  - **System Scan:** Perform comprehensive system diagnostics and repairs (requires admin rights).
  - **Password Generator:** Create secure, random passwords.
  - **Text Encoder/Decoder:** Convert text to/from ASCII values.
- **Error Handling:** Improved input validation and feedback.
- **Lightweight:** Pure batch scripts with no external dependencies.

## Prerequisites

- Windows operating system (XP or later).
- Administrator privileges for the System Scan tool.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/LucasElBobo/Batch-Toolbox.git

2. Navigate to the Directory:
   ```bash
   cd Batch-Toolbox

3. Run the Script:
   ```bash
   start toolbox.bat

4. Select an Option: Enter a number (1-8) to choose a tool and follow the prompts.

## Directory Structure

Batch-Toolbox/
├── toolbox.bat          # Main menu script
├── tools/              # Directory for tool scripts
│   ├── ip_geolocation.bat
│   ├── file_hider.bat
│   ├── folder_hider.bat
│   ├── file_search.bat
│   ├── system_scan.bat
│   ├── password_generator.bat
│   └── text_encoder_decoder.bat
└── README.md           # Project documentation

## Configuration

To customize or add tools:

   1. Open toolbox.bat in a text editor.
   2. Modify the :menu section to add options:
    batch
      echo 9. New Tool
      if "%choice%"=="9" call tools\new_tool.bat

3. Create new_tool.bat in the tools\ directory with your script logic.
4. Ensure the tool script ends with start "" toolbox.bat and exit /b 0 to return to the menu.

## Improvements Over the Original

   - Better UX: Added color (color 0A), consistent formatting, and clearer prompts.
   - Error Handling: Validates inputs, checks file/folder existence, and provides feedback.
   - Quit Options: Added 'q' to exit sub-tools gracefully.
   - Password Generator: Simplified and expanded character set for stronger passwords.
   - System Scan: Streamlined with admin check upfront.
   - ** Encoder/Decoder:** Fixed ASCII handling with more reliable methods.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contributing
Feel free to fork, submit pull requests, or report issues on GitHub!