# User configuration
export PATH="/opt/homebrew/bin:/usr/local/sbin:/Users/walteranderson/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

export EDITOR='vim'

# do not auto-name tmux windows
export DISABLE_AUTO_TITLE=true

# nvm
export NVM_DIR=$HOME/.nvm

# golang
export GOPATH="$HOME/code/golang"
export PATH="$PATH:$GOPATH/bin"

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code/python
export VIRTUALENV_PYTHON=/usr/local/bin/python3

# ansible
export PATH="/usr/local/opt/ansible@2.0/bin:$PATH"

# ruby
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

# reduce mode change delay to 0.1 seconds
export KEYTIMEOUT=1

export AWS_PROFILE=dev
