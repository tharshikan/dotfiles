# dotfiles

macOS config monorepo for Tharshi. Every directory is one tool's config,
symlinked to where that tool expects it by `install.sh`.

## Layout

| Directory | Live path (symlink) | What it is |
|---|---|---|
| `zsh/` | `~/.zshrc`, `~/.zprofile` | Shell startup (kept fast — see notes) |
| `vim/` | `~/.vimrc` | Vim |
| `nvim/` | `~/.config/nvim` | Neovim (LazyVim-based) |
| `git/` | `~/.gitconfig`, `~/.gitignore_global`, `~/.config/git/ignore` | Git |
| `ghostty/` | `~/.config/ghostty` | Ghostty terminal |
| `kitty/` | `~/.config/kitty` | Kitty terminal |
| `starship/` | `~/.config/starship.toml` | Prompt |
| `karabiner/` | `~/.config/karabiner` | Karabiner-Elements keyboard remaps |
| `linearmouse/` | `~/.config/linearmouse` | LinearMouse |
| `vscode/` | (manual) | VS Code extras |

## Rules

- **After adding or moving a file, run `./install.sh`** — it is idempotent and
  repairs all symlinks. Never hand-create symlinks.
- **No secrets in this repo.** Machine-local secrets go in `~/.zshrc.local`,
  which `.zshrc` sources and `.gitignore` excludes. Never track `gh/hosts.yml`,
  gcloud config, or API keys.
- `karabiner/automatic_backups/` is written by Karabiner itself and gitignored;
  don't add it.
- `zsh/.zshrc` is tuned for startup speed (<1s): nvm loads with `--no-use`,
  Angular completion is cached. Don't add `eval`s of slow tools without caching.
- Karabiner edits are load-bearing (the keyboard!): prefer small diffs to
  `karabiner/karabiner.json`, and note Karabiner also auto-saves to that file,
  so check `git diff` for app-written changes before committing yours.

## Related repos (not in this repo)

- Hammerspoon: `~/Projects/Personal/hammerspoon-tharshi`, symlinked to
  `~/.hammerspoon`. Window/keyboard automation lives there, not here.
