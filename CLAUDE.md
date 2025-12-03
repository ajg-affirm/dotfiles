# Chezmoi Dotfiles

Personal dotfiles managed with chezmoi. Source of truth for system configuration.

## Key Commands

```bash
chezmoi edit ~/.zshrc    # Edit source (opens dot_zshrc)
chezmoi diff             # Preview changes before applying
chezmoi apply -v         # Apply changes to home directory
chezmoi add ~/.newfile   # Start tracking a new dotfile
chezmoi update           # Pull + apply from remote
chezmoi cd               # Go to source directory for git ops
```

## File Organization

| Source Pattern | Target | Purpose |
|----------------|--------|---------|
| `dot_*` | `~/.*` | Regular dotfiles |
| `*.tmpl` | Templated | Uses `{{ .variable }}` from chezmoi data |
| `dot_config/*/` | `~/.config/*/` | XDG config dir |
| `.chezmoiscripts/run_*` | N/A | Bootstrap/setup scripts |
| `.chezmoidata/*.yaml` | N/A | Template variables (packages, etc.) |

## What's Managed

- Shell: `zshrc`, `p10k.zsh`
- Git: `gitconfig.tmpl` (templated for name/email)
- Editor: `vimrc`, `nvim/init.lua`
- Terminal: iTerm2 preferences
- System: macOS defaults, Homebrew packages
