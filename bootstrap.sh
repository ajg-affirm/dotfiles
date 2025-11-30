#!/bin/bash
set -e

# Install Xcode CLI Tools if missing
if ! xcode-select -p &> /dev/null; then
  xcode-select --install
  read -p "Press Enter after Xcode CLI Tools installation completes..."
fi

# Install Homebrew if missing
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install chezmoi
brew install chezmoi

# Initialize chezmoi with dotfiles repo
chezmoi init --apply https://github.com/andrejgou/dotfiles.git

echo "Setup complete!"
