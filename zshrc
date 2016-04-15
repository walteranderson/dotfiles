# Path to your oh-my-zsh installation.
export ZSH=~/.dotfiles/oh-my-zsh

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

plugins=(git sublime brew vi-mode tmux zsh-syntax-highlighting)

# User configuration
export PATH="/Users/walter/.composer/vendor/bin:/usr/local/sbin:/Users/walter/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh


export EDITOR='vim'
source $HOME/.dotfiles/aliases

# completion libraries
source $HOME/.dotfiles/completion/git-flow-completion.zsh
source $HOME/.dotfiles/completion/tmuxinator.zsh

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# do not auto-name tmux windows
export DISABLE_AUTO_TITLE=true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
