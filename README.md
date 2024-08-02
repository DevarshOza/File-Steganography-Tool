File Steganography Tool

This is a simple Bash script for hiding and extracting files within other files using basic steganography techniques. The tool allows you to hide one file inside another and extract the hidden file from a combined file.
Features

    Hide a File: Embed one file into another and create a combined output file.
    Unhide a File: Extract the hidden file from the combined file using the original cover file.
    Simple Menu: Easy-to-use command-line interface with a menu for selecting actions.

Requirements

    bash (tested with bash 5.0)
    figlet (for large text display)
    lolcat (for colorized output; optional)

## Installation

To install and use the File Steganography Tool, follow these steps:

1. **Install Dependencies**: Ensure you have `figlet` and `lolcat` installed on your system:

    ```bash
    sudo apt-get install figlet lolcat
    ```

2. **Clone the Repository**: Download the script from GitHub:

    ```bash
    git clone https://github.com/DevarshOza/File-Steganography-Tool.git
    ```

3. **Navigate to the Directory**: Change to the directory containing the script:

    ```bash
    cd File-Steganography-Tool
    ```

4. **Make the Script Executable**: Grant execute permissions to the script:

    ```bash
    chmod 777 filesteganography.sh
    ```

5. **Run the Script**: Start the tool:

    ```bash
    ./filesteganography.sh
    ```

Follow the on-screen instructions to use the tool.

Features:

    Interactive Menu: The script presents a clear menu with options for hiding and unhiding files, allowing users to navigate through tasks easily.
    File Selection: Users can select files from the current directory via a simple prompt-driven selection process. They can choose files to be used as cover or hidden files and specify output paths.
    Hide File: The hide_file function lets users embed one file within another by concatenating them. The user selects a cover file (which will contain the hidden file) and the file to be hidden, then specifies an output file for the result.
    Unhide File: The unhide_file function extracts a hidden file from a combined file. Users need to provide the combined file and the original cover file to determine the length of the cover file for accurate extraction. The hidden file is then saved to a user-defined location.
    Error Handling: The script includes basic error handling to manage invalid inputs and operational issues, providing color-coded feedback for user convenience.

Install Tool
    sudo apt-get install figlet lolcat
    git clone https://github.com/DevarshOza/File-Steganography-Tool.git
    cd File-Steganography-Tool
    chmod 777 filesteganography.sh
    ./filesteganography.sh 


Main Menu

Upon starting, the script displays a menu with the following options:

    Hide a File: Embed one file within another.
    Unhide a File: Extract the hidden file from the combined file.
    Exit: Exit the tool.

Hiding a File

    Select "Hide a File" from the main menu.

    Choose the Cover File: This is the file that will contain the hidden data. The script will list all files in the current directory. Enter the number corresponding to your cover file, or 0 to cancel.

    Select the File to Hide: Choose the file you want to hide. The script will again list files in the current directory. Enter the number corresponding to your file to hide, or 0 to cancel.

    Specify the Output File Path: Enter the path where you want the combined file to be saved. This file will contain the cover file with the hidden file embedded.

    Completion: The script will combine the files and save the result. You will see a success message if the operation completes without errors.

Extracting a Hidden File

    Select "Unhide a File" from the main menu.

    Choose the Combined File: This is the file that contains the cover file and the hidden file. The script will list all files in the current directory. Enter the number corresponding to your combined file, or 0 to cancel.

    Specify the Output File Path for the Hidden File: Enter the path where you want the extracted hidden file to be saved.

    Choose the Cover File: To determine the length of the cover file, select the cover file used during hiding. The script will list files again; choose the correct cover file.

    Completion: The script will extract the hidden file and save it to the specified location. A success message will appear if the extraction is successful.

Troubleshooting

    File Not Found: Ensure the file names are correct and that the files exist in the current directory.
    Permissions Issue: Make sure you have the necessary permissions to read and write files in the specified locations.
    Invalid Cover File Length: If the script reports an invalid cover file length, double-check that you selected the correct cover file during extraction.

FAQ

    Q: Can I use files of any size?
        A: Yes, but ensure the cover file is larger than the file you want to hide.

    Q: What happens if the combined file is too large?
        A: If the combined file exceeds disk space, the script may fail. Ensure there is sufficient space for both the cover and hidden files.

    Q: How do I cancel an operation?
        A: Type 0 when prompted to select a file to cancel the operation.


Notes

    The cover file should be a valid file that can serve as a base for embedding another file.
    The hidden file can be of any type or size, but ensure it is smaller than the cover file.

License

Feel free to submit issues or pull requests if you have suggestions or improvements!
Contact

For any questions or feedback, please contact [your email] or create an issue in the repository.
