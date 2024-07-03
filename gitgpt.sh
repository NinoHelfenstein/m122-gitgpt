#!/bin/bash

ENV_FILE=".env"
GITIGNORE=".gitignore"
API_URL="https://api.openai.com/v1/chat/completions"

# Check if the current directory is a git repository
if [ ! -d .git ]; then
    echo "This script must be run inside a Git repository."
    exit 1
fi

# Create .gitignore if it does not exist
if [[ ! -f "$GITIGNORE" ]]; then
    touch "$GITIGNORE"
    echo "# GitIgnore File" >> "$GITIGNORE"
fi

# Check if the environment file does not exists
if [[ ! -f "$ENV_FILE" ]]; then
    # Create environment file with API key from user input
    echo "Please enter your OpenAI API key:"
    read -r API_KEY
    echo "OPENAI_API_KEY=$API_KEY" > "$ENV_FILE"
    echo "$ENV_FILE" >> "$GITIGNORE"
    git update-index --skip-worktree "$GITIGNORE"
fi