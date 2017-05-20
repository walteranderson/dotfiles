# Path to your oh-my-zsh installation.
export ZSH=~/.dotfiles/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gitster" # avit, gianu, pygmalion, gnzh, jaischeema, junkfood, norm, sunrise

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git git-flow vi-mode tmux zsh-syntax-highlighting history-substring-search)

# User configuration
export PATH="/Users/walter/.composer/vendor/bin:/usr/local/sbin:/Users/walter/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# add custom aliases
source $HOME/.dotfiles/shell/aliases.sh

# do not auto-name tmux windows
export DISABLE_AUTO_TITLE=true

# completion libraries
[ -f $HOME/.dotfiles/zsh/completion/git-flow-completion.zsh ] && source $HOME/.dotfiles/zsh/completion/git-flow-completion.zsh

# add tmuxinator auto-completion
if type tmuxinator > /dev/null; then
    source $HOME/.dotfiles/zsh/completion/tmuxinator.zsh
fi

# for history-substring-search, turn off highlighting
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='none'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='none'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# nvm
export NVM_DIR=$HOME/.nvm

if type brew > /dev/null; then
  source /usr/local/opt/nvm/nvm.sh
else
  source $HOME/.nvm/nvm.sh
fi

# add phantomjs to path
export PATH="$PATH:$HOME/Documents/phantomjs-2.1.1-macosx/bin"

function gdlog {
  logs=($(ls ~/code/givingday/storage/logs/*.log))
  tail -f ${logs[-1]}
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH="$HOME/code/golang"
export PATH="$PATH:$GOPATH/bin"
