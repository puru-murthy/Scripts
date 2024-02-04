#!/bin/bash

# Prompt for the base path
read -p "Enter the base path: " base_path

# Create the base path if it doesn't exist
mkdir -p "$base_path"

# Prompt for directory names (comma-separated)
read -p "Enter directory names (comma-separated): " dir_names

# Convert comma-separated input to array
IFS=',' read -ra dir_array <<< "$dir_names"

# Loop through the array and create directories
for dir_name in "${dir_array[@]}"
do
    dir_path="$base_path/$dir_name"
    mkdir -p "$dir_path"
    echo "Created directory: $dir_path"
done
