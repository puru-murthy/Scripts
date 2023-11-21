#!/bin/bash
echo "Enter directory name =>" 
read dir_name


# Check if the directory exists
if [ -d "$dir_name" ]; then
# Create the directory if it does not exist
     rm -d "$dir_name"
     echo "Directory $dir_name deleted successfully."
 else
     echo "Directory $dir_name doesn't exists."
 fi