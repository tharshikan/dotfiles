#tharshi .zshrc



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


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


# Added by Antigravity
export PATH="/Users/tharshikanshan/.antigravity/antigravity/bin:$PATH"
