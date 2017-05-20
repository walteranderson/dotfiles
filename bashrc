
# source aliases
[ -f ./shell/aliases.sh ] && source ./shell/aliases.sh

# source fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
