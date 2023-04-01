#!/usr/bin/env bash
set -euo pipefail

settings_path="/mnt/c/Users/Kevin/AppData/Roaming/Code/User/settings.json"

# Git Bash emulation for Windows
if [[ "$OSTYPE" == "msys" ]]; then
  settings_path="/c/Users/Kevin/AppData/Roaming/Code/User/settings.json"
fi

cp "$settings_path" . && \
git add ./settings.json && \
git commit -m "Update VS Code settings" && \
git push origin master