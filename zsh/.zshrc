#tharshi .zshrc



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf: fd as the backend (fast, respects .gitignore), bat previews
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --border --color=light'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}' --preview-window right:55%"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_ALT_C_OPTS="--preview 'eza -1 --color=always {}'"
# Make **<tab> completion use fd too
_fzf_compgen_path() { fd --hidden --follow --exclude .git . "$1" }
_fzf_compgen_dir()  { fd --type d --hidden --follow --exclude .git . "$1" }

# Modern replacements
alias ls='eza'
alias ll='eza -l --git --header'
alias la='eza -la --git --header'
alias lt='eza --tree --level=2'
alias cat='bat --paging=never'

# rgf <pattern>: live-search file contents, preview with bat, Enter opens nvim at the line
rgf() {
  local sel
  sel=$(rg --line-number --no-heading --color=always --smart-case "${*:-}" \
    | fzf --ansi --delimiter : \
        --preview 'bat --color=always --highlight-line {2} {1}' \
        --preview-window 'right:55%,+{2}/2') || return
  nvim "+$(echo "$sel" | cut -d: -f2)" "$(echo "$sel" | cut -d: -f1)"
}


#bindkey
# function open_chrome() {
#     open -a "Google Chrome"
# }
# zle -N open_chrome
#
# function open_chrome_canary() {
#     open -a "Google Chrome Canary"
# }
# zle -N open_chrome_canary
#
# bindkey '^A' open_chrome_canary
# bindkey '^G' open_chrome

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Angular CLI autocompletion, cached to avoid booting node on every shell.
# Regenerate after upgrading @angular/cli: ng completion script > ~/.config/ng-completion.zsh
[ -f ~/.config/ng-completion.zsh ] && source ~/.config/ng-completion.zsh

# Autocompletion
zstyle -e ':autocomplete:list-choices:*' list-lines 'reply=( $(( LINES / 6 )) )'

# Secrets live outside the dotfiles repo.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

eval "$(starship init zsh)"

# zoxide — lives in .zshrc (not .zprofile) so nested shells get it too.
# Plain cd gains jumping: real paths behave normally, keywords teleport.
eval "$(zoxide init zsh)"
alias cd=z


# Added by Antigravity
export PATH="/Users/tharshikanshan/.antigravity/antigravity/bin:$PATH"

# Adv360 Text Nav 2: Ghostty sends ⌥-arrows/⌦ as xterm CSI sequences, which zsh
# leaves unbound (kitty sent ESC f/b — why these keys worked before the switch).
# ⌥→⌥⌫ is the keyboard's whole-word delete; these make it land at the prompt.
# Kept after zsh-autocomplete so nothing rebinds them.
bindkey '^[[1;3C' forward-word    # ⌥→
bindkey '^[[1;3D' backward-word   # ⌥←
bindkey '^[[3~'   delete-char     # ⌦
bindkey '^[[3;3~' kill-word       # ⌥⌦
