#!/usr/bin/env bash
# Idempotent symlinker: points the paths apps expect at the files in this repo.
# Safe to re-run any time. Existing non-symlink targets are moved to a
# timestamped backup dir, never deleted.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup-$(date +%Y%m%d-%H%M%S)"

link() {
  local src="$DOTFILES/$1" dst="$2"
  if [ ! -e "$src" ]; then
    echo "SKIP  $dst (missing source $1)"
    return
  fi
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
    echo "OK    $dst"
    return
  fi
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    mkdir -p "$BACKUP_DIR"
    mv "$dst" "$BACKUP_DIR/$(basename "$dst")"
    echo "MOVED $dst -> $BACKUP_DIR/"
  fi
  mkdir -p "$(dirname "$dst")"
  ln -s "$src" "$dst"
  echo "LINK  $dst -> $src"
}

# Shell
link zsh/.zshrc      "$HOME/.zshrc"
link zsh/.zprofile   "$HOME/.zprofile"

# Editors
link vim/.vimrc      "$HOME/.vimrc"
link nvim            "$HOME/.config/nvim"

# Git
link git/gitconfig         "$HOME/.gitconfig"
link git/gitignore_global  "$HOME/.gitignore_global"
link git/ignore            "$HOME/.config/git/ignore"

# Terminals & prompt
link ghostty                "$HOME/.config/ghostty"
link kitty                  "$HOME/.config/kitty"
link starship/starship.toml "$HOME/.config/starship.toml"

# Input devices
link karabiner    "$HOME/.config/karabiner"
link linearmouse  "$HOME/.config/linearmouse"

echo "Done. Backups (if any): $BACKUP_DIR"
