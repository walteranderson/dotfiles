# User configuration
export PATH="/Users/walter/.composer/vendor/bin:/usr/local/sbin:/Users/walter/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# add custom aliases
source $HOME/.dotfiles/shell/aliases.sh

export EDITOR='vim'

# do not auto-name tmux windows
export DISABLE_AUTO_TITLE=true

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# nvm
export NVM_DIR=$HOME/.nvm

# add phantomjs to path
export PATH="$PATH:$HOME/Documents/phantomjs-2.1.1-macosx/bin"

# golang
export GOPATH="$HOME/code/golang"
export PATH="$PATH:$GOPATH/bin"
