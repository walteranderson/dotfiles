alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias ll='ls -FGlAhp'

# folder changes
alias c='cd ~/code'
alias d='cd ~/code/dev'
alias h='cd ~/Homestead'
alias df='cd ~/.dotfiles/'

# opening files
alias hosts='sudo vim /etc/hosts'
alias vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'

# vim with a light colorscheme
alias vimL='vim -c "colorscheme lucius|AirlineTheme lucius" -c "set background=light"'

# git-related
alias gst='git status'
alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push -u origin $(git symbolic-ref --short -q HEAD)'

alias gopath='cd $GOPATH'
alias dj='python3 manage.py'

# applications
alias mux='tmuxinator'
alias tm='tmux'
alias emacsgui='open -a emacs'
alias pgsql='postgres -D /usr/local/var/postgres'
alias ctagsg='ctags -R --exclude=vendor --exclude=node_modules'

alias :q='echo "this is not vim, you idiot."'
