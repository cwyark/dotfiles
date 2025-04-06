#!/bin/env sh

# Function to install fzf on Linux systems
install_fzf() {
  # Install fzf
  if ! command -v fzf >/dev/null 2>&1; then
    echo "Installing fzf..."
    # You can use a package manager like apt, yum, or pacman depending on the distribution
    if command -v apt >/dev/null 2>&1; then
      sudo apt update && sudo apt install -y fzf
    elif command -v yum >/dev/null 2>&1; then
      sudo yum install -y fzf
    elif command -v pacman >/dev/null 2>&1; then
      sudo pacman -Syu fzf
    else
      echo "No compatible package manager found. Please install fzf manually."
    fi
  else
    echo "fzf is already installed."
  fi
}

# Call the function to install fzf
# Check if the system is Linux
if [ "$(uname)" = "Linux" ]; then
  install_fzf
fi
