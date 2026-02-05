#!/bin/bash

# Create directory
mkdir bash_demo
echo "Directory 'bash_demo' created."

# Navigate into the directory
cd bash_demo || exit

# Create file and write text with current date
echo "This file was created by a Bash script on $(date +%Y-%m-%d)" > demo.txt
echo "File 'demo.txt' created."

# Display file contents
echo
echo "File contents:"
cat demo.txt

