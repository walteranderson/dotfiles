# load bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# load git autocompletion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# display git branch if the current directory has a repo
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# command line prompt
export PS1="\[\033[32m\]\W\[\033[31m\]\$(parse_git_branch)\[\033[00m\] ➜ "

# export XDEBUG_CONFIG="idekey=phpstorm"

# PATH modifications
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Users/walter/bin:$PATH"

# homebrew
export PATH="/usr/local/sbin:$PATH"

# composer
export PATH="~/.composer/vendor/bin:$PATH"



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
