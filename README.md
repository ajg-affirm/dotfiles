# My Dotfiles

Reproducible Mac development environment setup using chezmoi.

## Fresh Mac Setup

Run this one command:

```bash
curl -fsSL https://raw.githubusercontent.com/andrejgou/dotfiles/main/bootstrap.sh | bash
```

You'll be prompted for:
- Full name (for Git commits)
- Email address (for Git commits)

## Optional: Generate SSH Keys

If you need SSH access to GitHub:
```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
cat ~/.ssh/id_ed25519.pub  # Add to GitHub
```

## What's Included

- Homebrew packages (git, neovim, ripgrep, fzf, etc.)
- Oh My Zsh with git plugin
- Basic dotfiles (.zshrc, .gitconfig, .vimrc)
- iTerm2
