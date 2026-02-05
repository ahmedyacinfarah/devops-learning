#!/bin/bash

# Prompt user for source directory
read -p "Enter source directory: " src_dir

# Check if source directory exists
if [ ! -d "$src_dir" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

# Create timestamped backup directory
timestamp=$(date +"%Y-%m-%d_%H-%M")
backup_dir="backup_$timestamp"

mkdir -p "$backup_dir"
echo "Backup directory created: $backup_dir"
echo "Copying .txt files..."

# Copy .txt files and count them
count=0
for file in "$src_dir"/*.txt; do
    if [ -f "$file" ]; then
        cp "$file" "$backup_dir"
        ((count++))
    fi
done

# Display result
echo
echo "Backup complete! Files backed up: $count"

