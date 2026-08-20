

# Added by Toolbox App
export PATH="$PATH:/Users/tharshikanshan/Library/Application Support/JetBrains/Toolbox/scripts"

#NVM
export NVM_DIR="$HOME/.nvm"
# --no-use skips the slow auto-activation; the default node goes on PATH directly below.
# Update the version here after `nvm install`+`nvm alias default`.
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" --no-use
export PATH="$NVM_DIR/versions/node/v21.2.0/bin:$PATH"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion




eval "$(/opt/homebrew/bin/brew shellenv)"

#zoxide
eval "$(zoxide init zsh)"


# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH
