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
alias dj='python3 manage.py'

# applications
alias vimL='vim -c "colorscheme lucius|AirlineTheme lucius" -c "set background=light"'
alias nvimL='nvim -c "set background=light"'
alias mux='tmuxinator'
alias tm='tmux'
alias tma='tmux attach-session -t'
alias emacsgui='open -a emacs'
alias pgsql='postgres -D /usr/local/var/postgres'
alias ctagsg='ctags -R --exclude=vendor --exclude=node_modules'

alias :q='echo "this is not vim, you idiot."'
alias nethack='ssh nethack@alt.org'
alias svim='vim -u ~/.SpaceVim/vimrc'
