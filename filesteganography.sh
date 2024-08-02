#!/bin/bash
RED='\033[0;31m'

#Menu big font title
figlet -f starwars -c "Embed file" | lolcat
figlet -f digital -c "Hide your one file to another file" | lolcat

echo ""

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to list files in the current directory and allow selection
select_file() {
    local prompt="$1"
    local selected_file

    echo "$prompt"
    echo "Type the number of the file you want to select or type '0' to cancel:"
    select file in *; do
        if [ "$REPLY" -eq 0 ]; then
            echo -e "${RED}Selection canceled.${NC}"
            return 1
        elif [ -n "$file" ]; then
            selected_file="$file"
            break
        else
            echo -e "${RED}Invalid option. Try again.${NC}"
        fi
    done

    echo "$selected_file"
}

# Function to hide a file inside another
hide_file() {
    echo "Select the cover file:"
    cover_file=$(select_file "Cover file selection:")
    [ -z "$cover_file" ] && return 1

    echo "Select the file to hide:"
    file_to_hide=$(select_file "File to hide selection:")
    [ -z "$file_to_hide" ] && return 1

    echo "Enter the output file path (the combined file):"
    read output_file

    # Combine cover file and hidden file into output file
    cat "$cover_file" "$file_to_hide" > "$output_file"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}File hidden successfully in $output_file${NC}"
    else
        echo -e "${RED}Failed to hide the file.${NC}"
    fi
}

# Function to unhide a file from the combined file
unhide_file() {
    echo "Select the combined file containing the hidden data:"
    combined_file=$(select_file "Combined file selection:")
    [ -z "$combined_file" ] && return 1

    echo "Enter the output file path (to save the extracted hidden file):"
    read hidden_file

    # Determine the length of the cover file automatically
    echo "Select the cover file (to determine its length in bytes):"
    cover_file=$(select_file "Cover file selection:")
    [ -z "$cover_file" ] && return 1
    cover_file_length=$(wc -c < "$cover_file")

    # Ensure cover file length is a number
    if ! [[ "$cover_file_length" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Invalid cover file length. Please enter a valid number.${NC}"
        return 1
    fi

    # Extract the hidden file from the combined file
    tail -c +$((cover_file_length + 1)) "$combined_file" > "$hidden_file"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Hidden file extracted to $hidden_file${NC}"
    else
        echo -e "${RED}Failed to extract the hidden file.${NC}"
    fi
}

# Main menu loop
while true; do
    echo "Main Menu:"
    echo "1. Hide a file"
    echo "2. Unhide a file"
    echo "3. Exit"
    read -p "Select an option [1-3]: " option

    case $option in
        1)
            hide_file
            ;;
        2)
            unhide_file
            ;;
        3)
            echo -e "${GREEN}Exiting...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid option. Please select a valid option [1-3].${NC}"
            ;;
    esac
done
