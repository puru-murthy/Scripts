#!/bin/bash
echo "Enter directory name =>" 
read dir_name


# Check if the directory exists
if [ ! -d "$dir_name" ]; then
# Create the directory if it does not exist
     mkdir "$dir_name"
     echo "Directory $dir_name created successfully."
 else
     echo "Directory $dir_name already exists."
 fi