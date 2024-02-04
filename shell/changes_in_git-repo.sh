#!/bin/bash

# Git credentials 
REPO_LINK="https://github.com/puru-murthy/"
REPO_NAME="DevOps"

# Prompt user for GitHub username & password
read -p "Enter GitHub username: " USERNAME
read -s -p "Enter GitHub password for $USERNAME: " PASSWORD
echo

# log into Github

REPO_URL="$REPO_LINK$REPO_NAME.git"

# if already cloned remote the repo
rm -rf $REPO_NAME

# Clone the repository using HTTPS URL

git clone "$REPO_URL" || {
    # If cloning fails, try using credentials in the URL
    git clone "https://$USERNAME:$PASSWORD@$REPO_URL"
}

# Move into the cloned repository

cd "$REPO_NAME" || exit 1

# Switch to the main branch
git checkout main || exit 1

FILE_PATH="Kubernetes/deployment.yaml"
OLD_IMAGE="yourapp"
NEW_IMAGE="myapp"

sed -i "s|$OLD_IMAGE|$NEW_IMAGE|g" "$FILE_PATH"

echo "Replacement completed in $FILE_PATH"

# Stage the changes
git add "$FILE_PATH"

# Commit the changes
git commit -m "Update image in deployment.yaml"

# Push the changes to the remote repository
git push origin main

echo "Changes pushed to the remote repository"
