#!/bin/env sh

# Function to install fzf on Linux systems
install_fzf() {
<<<<<<< HEAD
  # Define the download URL and target directory
  FZF_URL="https://github.com/junegunn/fzf/releases/download/v0.61.1/fzf-0.61.1-linux_amd64.tar.gz"
  TARGET_DIR="$HOME/.local/bin"
  FZF_BINARY="$TARGET_DIR/fzf"

  # Check if fzf is already installed in the target directory
  if [ ! -f "$FZF_BINARY" ]; then
    echo "Installing fzf..."

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
    echo "fzf is already installed in $TARGET_DIR."
  fi
}

# Function to install lazygit on Linux systems
install_lazygit() {
  # Define the download URL and target directory
  LAZYGIT_URL="https://github.com/jesseduffield/lazygit/releases/download/v0.48.0/lazygit_0.48.0_Linux_x86_64.tar.gz"
  TARGET_DIR="$HOME/.local/bin"
  LAZYGIT_BINARY="$TARGET_DIR/lazygit"

  # Check if lazygit is already installed in the target directory
  if [ ! -f "$LAZYGIT_BINARY" ]; then
    echo "Installing lazygit..."

    # Create the target directory if it doesn't exist
    mkdir -p "$TARGET_DIR"

    # Download and extract lazygit
    if command -v curl >/dev/null 2>&1; then
      curl -L "$LAZYGIT_URL" -o /tmp/lazygit.tar.gz
    elif command -v wget >/dev/null 2>&1; then
      wget "$LAZYGIT_URL" -O /tmp/lazygit.tar.gz
    else
      echo "Neither curl nor wget is available. Please install one of them to proceed."
      return 1
    fi

    # Extract the binary and move it to the target directory
    tar -xzf /tmp/lazygit.tar.gz -C /tmp
    mv /tmp/lazygit "$TARGET_DIR"

    # Clean up
    rm /tmp/lazygit.tar.gz

    echo "lazygit installed successfully in $TARGET_DIR."
  else
    echo "lazygit is already installed in $TARGET_DIR."
  fi
=======
  # ... existing code ...
}

# Function to install lazygit on Linux systems
install_lazygit() {
  # ... existing code ...
>>>>>>> Snippet
}

# Function to install fnm on Linux systems
install_fnm() {
  # Define the download URL and target directory
  FNM_URL="https://github.com/Schniz/fnm/releases/download/v1.38.1/fnm-linux.zip"
  TARGET_DIR="$HOME/.local/bin"
  FNM_BINARY="$TARGET_DIR/fnm"

  # Check if fnm is already installed in the target directory
  if [ ! -f "$FNM_BINARY" ]; then
    echo "Installing fnm..."

    # Create the target directory if it doesn't exist
    mkdir -p "$TARGET_DIR"

    # Download and extract fnm
    if command -v curl >/dev/null 2>&1; then
      curl -L "$FNM_URL" -o /tmp/fnm.zip
    elif command -v wget >/dev/null 2>&1; then
      wget "$FNM_URL" -O /tmp/fnm.zip
    else
      echo "Neither curl nor wget is available. Please install one of them to proceed."
      return 1
    fi

    # Extract the binary and move it to the target directory
    unzip -o /tmp/fnm.zip -d /tmp
    mv /tmp/fnm "$TARGET_DIR"

    # Clean up
    rm /tmp/fnm.zip

    echo "fnm installed successfully in $TARGET_DIR."
  else
    echo "fnm is already installed in $TARGET_DIR."
  fi
}

# Function to install Node.js v22.11.0 LTS using fnm
install_node_v22() {
  # Ensure fnm is in the PATH
  export PATH="$HOME/.local/bin:$PATH"

  # Initialize fnm
  eval "$(fnm env --use-on-cd --shell bash)"

  # Install Node.js v22.11.0 LTS
  fnm install v22.11.0
  fnm use v22.11.0

  echo "Node.js v22.11.0 LTS installed and set as default."
}

# Call the functions to install fzf, lazygit, fnm, and Node.js v22.11.0 LTS
# Check if the system is Linux
if [ "$(uname)" = "Linux" ]; then
  install_fzf
  install_lazygit
  install_fnm
  install_node_v22
fi
