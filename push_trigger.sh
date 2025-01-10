#!/bin/bash

# Variables
BRANCH_NAME="main" # Change to your default branch name if different
COMMIT_MESSAGE="Triggering webhook with changes"
FILE_TO_CHANGE="trigger_file.txt"

# Check if the repository is a Git repo
if [ ! -d .git ]; then
  echo "This directory is not a Git repository. Please initialize or clone a repo."
  exit 1
fi

# Create, modify the file to trigger a change
if [ ! -f "$FILE_TO_CHANGE" ]; then
  echo "Trigger file created at $(date)" > "$FILE_TO_CHANGE"
else
  echo "Trigger file updated at $(date)" >> "$FILE_TO_CHANGE"
fi

# Git Commands
git add "$FILE_TO_CHANGE"
git commit -m "$COMMIT_MESSAGE"
git push origin "$BRANCH_NAME"

# Output
if [ $? -eq 0 ]; then
  echo "Changes pushed successfully to branch: $BRANCH_NAME"
  echo "Webhook should now be triggered."
else
  echo "Failed to push changes. Please check your Git configuration."
fi
