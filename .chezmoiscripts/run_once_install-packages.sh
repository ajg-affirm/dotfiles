#!/bin/bash

# Install Homebrew packages
brew bundle install --global

# Install Oh My Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "Packages installed!"
