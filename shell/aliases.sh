alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'
alias ll='ls -FGlAhp'

# folder changes
alias c='cd ~/code'
alias d='cd ~/code/dev'
alias h='cd ~/Homestead'
alias df='cd ~/.dotfiles/'

# project directories
alias ca='cd /Users/walter/code/class-agent'
alias gd='cd /Users/walter/code/givingday'
alias bp='cd /Users/walter/code/bluuprint'

# opening files
alias hosts='sudo vim /etc/hosts'
alias vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
alias hV='vim ~/.homestead/Homestead.yaml'

# dotfiles
alias zV='vim ~/.dotfiles/zsh/zshrc'
alias vV='vim ~/.dotfiles/vim/vimrc'

# vim with a light colorscheme
alias vimL='vim -c "colorscheme lucius|AirlineTheme lucius"'

# git-related
alias gfb='git config gitflow.branch.develop'
alias gst='git status'
alias gaa='git add --all'
alias gcmsg='git commit -m'

alias pkg='yarn'
alias g='gulp'
alias gw='gulp watch'
alias gp='gulp --production'
alias art='php artisan'
alias gopath='cd $GOPATH'
alias dj='python3 manage.py'

# applications
alias mux='tmuxinator'
alias tm='tmux'
alias emacsgui='open -a emacs'
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias pgsql='postgres -D /usr/local/var/postgres'

alias :q='echo "this is not vim, you idiot."'
