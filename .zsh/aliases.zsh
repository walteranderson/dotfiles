alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias ll='ls -FGlAhp'

# folder changes
alias c='cd ~/code'
alias df='cd ~/.dotfiles/'

# git-related
alias gst='git status'
alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'
alias gpu='git push -u origin $(git symbolic-ref --short -q HEAD)'

alias gopath='cd $GOPATH'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# applications
alias mux='tmuxinator'
alias tm='tmux'
alias tma='tmux attach-session -t'
alias pgsql='postgres -D /usr/local/var/postgres'

alias :q='echo "this is not vim, you idiot."'
