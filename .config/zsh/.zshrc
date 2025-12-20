#!/bin/zsh

bindkey -v

export HISTFILE=~/.zsh_history
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true

function add_to_path() {
  export PATH="$PATH:$1"
}

add_to_path "/usr/local/go/bin"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/go/bin"
add_to_path "$HOME/n/bin"

alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias ll='ls -FGlAhp'
alias c='cd ~/code'
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
source ~/.config/zsh/completion.zsh
