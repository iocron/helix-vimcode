#!/bin/bash

## VERSION_02
INPUT=$(cat)
ROLE="${1:-default}"

if git_root=$(git rev-parse --show-toplevel 2>/dev/null); then
  PROJECT_NAME=$(basename "$git_root")
else
  PROJECT_NAME=$(echo "$PWD" | awk -F/ '{print $(NF-1) "/" $NF}')
fi

case "$ROLE" in
  explain)
    PROMPT="Add to each big block or big paragraph a explanation as comment (e.g. // or #). And do not change the code: \n\n$INPUT"
    ;;
  fix)
    PROMPT="Fix the following below:\n\n$INPUT"
    ;;
  complete)
    PROMPT="Complete the following below:\n\n$INPUT"
    ;;
  *)
    PROMPT="$INPUT"
    ;;
esac

# Force mods to return raw stdout only (no prompt echoed, no spinner, no TTY issues)
# --format "Do not output markdown fences." 
# INFO: You need to set/expose in the mods settings: mods --settings
mods --model "qwen2.5-coder" --api http://localhost:11434/api --continue "$PROJECT_NAME" --raw --prompt "$PROMPT" 2>/dev/null


## VERSION_01
# MODE="${1:-default}"
# INPUT=$(cat -)

# case "$MODE" in
#   explain)
#     PROMPT="Keep the code unchanged, but add code comments with explanation to each logic/block:\n\n$INPUT"
#     ;;
#   fix)
#     PROMPT="Find and fix any issues in this code:\n\n$INPUT"
#     ;;
#   complete)
#     PROMPT="Complete the following code:\n\n$INPUT"
#     ;;
#   *)
#     PROMPT="$INPUT"
#     ;;
# esac

# # Use jq to safely construct the JSON payload
# JSON=$(jq -n --arg prompt "$PROMPT" --arg model "codellama" \
#   '{model: $model, prompt: $prompt, stream: false}')

# # Call Ollama and extract only the 'response' field
# curl -s http://localhost:11434/api/generate -d "$JSON" | jq -r '.response'

