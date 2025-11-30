# My Dotfiles

Reproducible Mac development environment setup using chezmoi.

chezmoi stores the desired state of your dotfiles in `~/.local/share/chezmoi`, then applies the minimum changes needed to make your actual dotfiles match this desired state.

## Setup on a New Machine

```bash
curl -fsSL https://raw.githubusercontent.com/andrejgou/dotfiles/main/bootstrap.sh | bash
```

This initializes chezmoi with your dotfiles and prompts for your name and email.

## Daily Workflow

### Adding a New Dotfile

```bash
chezmoi add ~/.tmux.conf
```

This copies `~/.tmux.conf` to the source state.

### Making Changes

```bash
# Edit the source state
chezmoi edit ~/.zshrc

# See what would change
chezmoi diff

# Apply changes to your home directory
chezmoi apply -v
```

### Committing Changes

```bash
chezmoi cd
git add .
git commit -m "Add tmux configuration"
git push
```

### Pulling Updates on Another Machine

```bash
# See what would change
chezmoi diff

# Apply updates
chezmoi update
```

## Common Commands

| Command | Description |
|---------|-------------|
| `chezmoi add <file>` | Start managing a file |
| `chezmoi edit <file>` | Edit the source state |
| `chezmoi diff` | See what would change |
| `chezmoi apply` | Apply changes to home directory |
| `chezmoi update` | Pull from repo and apply |
| `chezmoi cd` | Navigate to source directory |
