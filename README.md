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
