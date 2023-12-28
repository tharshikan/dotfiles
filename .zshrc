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

# Load Angular CLI autocompletion.
source <(ng completion script)

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/tharshikanshan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Autocompletion
zstyle -e ':autocomplete:list-choices:*' list-lines 'reply=( $(( LINES / 6 )) )'

eval "$(starship init zsh)"
