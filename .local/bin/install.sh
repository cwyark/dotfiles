#!/bin/env sh

# Function to install fzf on Linux systems
install_fzf() {
  # Install fzf
  if ! command -v fzf >/dev/null 2>&1; then
    echo "Installing fzf..."
    # Define the download URL and target directory
    FZF_URL="https://github.com/junegunn/fzf/releases/download/v0.61.1/fzf-0.61.1-linux_amd64.tar.gz"
    TARGET_DIR="$HOME/.local/bin"

    # Create the target directory if it doesn't exist
    mkdir -p "$TARGET_DIR"

    # Download and extract fzf
    if command -v curl >/dev/null 2>&1; then
      curl -L "$FZF_URL" -o /tmp/fzf.tar.gz
    elif command -v wget >/dev/null 2>&1; then
      wget "$FZF_URL" -O /tmp/fzf.tar.gz
    else
      echo "Neither curl nor wget is available. Please install one of them to proceed."
      return 1
    fi

    # Extract the binary and move it to the target directory
    tar -xzf /tmp/fzf.tar.gz -C /tmp
    mv /tmp/fzf "$TARGET_DIR"

    # Clean up
    rm /tmp/fzf.tar.gz

    echo "fzf installed successfully in $TARGET_DIR."
  else
    echo "fzf is already installed."
  fi
}

# Call the function to install fzf
# Check if the system is Linux
if [ "$(uname)" = "Linux" ]; then
  install_fzf
fi
