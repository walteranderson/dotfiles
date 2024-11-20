#!/bin/zsh

bindkey -v

export HISTFILE=~/.zsh_history
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true
export PATH="$PATH:$HOME/.local/bin"

alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias ll='ls -FGlAhp'
alias c='cd ~/code'
alias df='cd ~/.dotfiles/'
alias tm='tmux'
alias tma='tmux attach-session -t'
alias gst='git status'
alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'
alias gpu='git push -u origin $(git symbolic-ref --short -q HEAD)'

source ~/.config/zsh/setopt.zsh
source ~/.config/zsh/external.zsh
source ~/.config/zsh/prompt.zsh
