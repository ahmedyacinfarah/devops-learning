#!/bin/bash

# Prompt user for filename
read -p "Enter filename to check: " file

# Check if file exists
if [ -e "$file" ]; then
    echo "File '$file' exists."

    # Check read permission
    if [ -r "$file" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    # Check write permission
    if [ -w "$file" ]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    # Check execute permission
    if [ -x "$file" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi
else
    echo "File '$file' does not exist."
fi

