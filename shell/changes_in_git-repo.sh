#!/bin/bash

# log into Github 

REPO_URL="https://github.com/puru-murthy/DevOps.git"

# User name and pwd

USER_NAME="pmurthy0604"
PASSWORD="1Puru_suji"

# Clone the repository using HTTPS URL

git clone "$REPO_URL" || {
    # If cloning fails, try using credentials in the URL
    git clone "https://$USERNAME:$PASSWORD@$REPO_URL"
}

# Move into the cloned repository

cd Kubernetes/
FILE_PATH="deployment.yaml"
OLD_IMAGE="image: simpleimage/argocd-app:1.1"
NEW_IMAGE="image: simpleimage/argocd-app:1.2"

sed -i "s|$OLD_IMAGE|$NEW_IMAGE|g" "$FILE_PATH"

echo "Replacement completed in $FILE_PATH"