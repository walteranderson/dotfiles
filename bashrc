#
# Aliases
#

# movement
alias ll='ls -FGlAhp'
alias ..='cd ..'
alias ...='cd ../..'

# folder changes
alias s='cd /Users/walter/Sites'
alias d='cd /Users/walter/Sites/dev'
alias h='cd /Users/walter/Homestead'

# project directories
alias ca='cd /Users/walter/Sites/class-agent'

# opening files
alias hosts='sudo vim /etc/hosts'
alias vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
alias bashrc='vim ~/.bashrc'
alias bashprofile=' vim ~/.bash_profile'
alias hedit='vim ~/.homestead/Homestead.yaml'
alias dotvim='vim ~/.vim/vimrc'

# todo.sh
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg'
alias tw='t ls @work'

# apache shortcuts
alias apacher='sudo apachectl -k restart'
alias apaches='sudo apachectl start'
alias apachestop='sudo apachectl stop'

# laravel-specific
alias art='php artisan'
alias da='composer dump-autoload'

alias g='gulp'
alias gw='gulp watch'

# basecamp setting hours
alias time='php ~/Sites/camptime/artisan camptime'

# mysql shortcuts
#alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
#alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'
#alias mysqlrestart='sudo /usr/local/mysql/support-files/mysql.server restart'

# Added by termtile (https://github.com/apaszke/termtile)
alias ul='osascript ~/.termtile/tile.scpt up left'
alias ur='osascript ~/.termtile/tile.scpt up right'
alias dl='osascript ~/.termtile/tile.scpt down left'
alias dr='osascript ~/.termtile/tile.scpt down right'
alias fl='osascript ~/.termtile/tile.scpt left'
alias fr='osascript ~/.termtile/tile.scpt right'
alias up='osascript ~/.termtile/tile.scpt up'
alias down='osascript ~/.termtile/tile.scpt down'
alias big='osascript ~/.termtile/resize.scpt '
alias cen='osascript ~/.termtile/center.scpt '
alias max='osascript ~/.termtile/maximize.scpt '
alias sn='osascript ~/.termtile/changeScreen.scpt next'
alias fs='osascript ~/.termtile/fullscreen.scpt '

