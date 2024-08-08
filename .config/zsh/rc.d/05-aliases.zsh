alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias ll='ls -FGlAhp'
alias c='cd ~/code'
alias df='cd ~/.dotfiles/'

alias gopath='cd $GOPATH'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
alias tm='tmux'
alias tma='tmux attach-session -t'

alias gst='git status'
alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'
alias gpu='git push -u origin $(git symbolic-ref --short -q HEAD)'
