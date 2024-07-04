ENV_FILE="$(dirname "$0")/.env"
API_URL="https://api.openai.com/v1/engines"

# Check if the current directory is a git repository
if [ ! -d .git ]; then
  echo "This script must be run inside a Git repository."
  exit 1
fi

<<<<<<< HEAD
=======
# Create .gitignore if it does not exist
if [[ ! -f "$GITIGNORE" ]]; then
  touch "$GITIGNORE"
  echo "# GitIgnore File" >> "$GITIGNORE"
fi

>>>>>>> 384c4be62c6c3bc1174863b8c416f6f689b00dde
# Check if .env exists and contains API_KEY
if [[ ! -f "$ENV_FILE" ]]; then
  echo "Please enter your OpenAI API key:"
  read -r API_KEY
  echo "OPENAI_API_KEY=$API_KEY" > "$ENV_FILE"
  echo "$ENV_FILE" >> "$GITIGNORE"
  git update-index --skip-worktree "$GITIGNORE" # Update .gitignore to include .env after creating it
else
  # Check if API_KEY is in .env
  if [[ -z "${OPENAI_API_KEY}" ]]; then
    echo "Please enter your OpenAI API key:"
    read -r API_KEY
<<<<<<< HEAD
    echo "OPENAI_API_KEY=$API_KEY" >"$ENV_FILE"
else
    source "$ENV_FILE"
    if [[ -z "${OPENAI_API_KEY}" ]]; then
        echo "Please enter your OpenAI API key:"
        read -r API_KEY
        echo "OPENAI_API_KEY=$API_KEY" >>"$ENV_FILE"
    fi
=======
    echo "OPENAI_API_KEY=$API_KEY" >> "$ENV_FILE"
  fi
>>>>>>> 384c4be62c6c3bc1174863b8c416f6f689b00dde
fi

# Load the API key
source "$ENV_FILE"

# Function to check if the API key is valid
function check_api_key() {
<<<<<<< HEAD
    RESPONSE=$(curl -s -o /dev/null -I -w "%{http_code}" -H "Authorization: Bearer $OPENAI_API_KEY" "$API_URL")
    while [[ "$RESPONSE" != "200" ]]; do
        echo "API key is not valid. Please enter a valid OpenAI API key:"
        read -r OPENAI_API_KEY
        echo "OPENAI_API_KEY=$OPENAI_API_KEY" >"$ENV_FILE"
        RESPONSE=$(curl -s -o /dev/null -I -w "%{http_code}" -H "Authorization: Bearer $OPENAI_API_KEY" "$API_URL")
    done
    echo "API key is valid."
=======
  RESPONSE=$(curl -s -o /dev/null -I -w "%{http_code}" -H "Authorization: Bearer $OPENAI_API_KEY" "https://api.openai.com/v1/engines")
  while [[ "$RESPONSE" != "200" ]]; do
    echo "API key is not valid. Please enter a valid OpenAI API key:"
    read -r OPENAI_API_KEY
    RESPONSE=$(curl -s -o /dev/null -I -w "%{http_code}" -H "Authorization: Bearer $OPENAI_API_KEY" "https://api.openai.com/v1/engines")
  done
  echo "API key is valid."
>>>>>>> 384c4be62c6c3bc1174863b8c416f6f689b00dde
}

check_api_key