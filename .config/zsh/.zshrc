#!/bin/zsh

# vim mode
bindkey -v

# Allow multiple terminal sessions to all append to one zsh command history
setopt APPEND_HISTORY
# Add commands as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY
# Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_DUPS
# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS
# Remove extra blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS
# Include more information about when the command was executed, etc
setopt EXTENDED_HISTORY
# Allow completion from within a word/phrase
setopt COMPLETE_IN_WORD
# When completing from the middle of a word, move the cursor to the end of the word
setopt ALWAYS_TO_END
# Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt PROMPT_SUBST
unsetopt MENU_COMPLETE
setopt AUTO_MENU

###
# Exports
###

export HISTFILE=~/.zsh_history
export EDITOR='vim'
export DISABLE_AUTO_TITLE=true
export AWS_PROFILE=dev
export PATH="$PATH:$HOME/.local/bin"

###
# Aliases
###

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

###
# Externals
###

if [ "$(uname)" = "Darwin" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source <(fzf --zsh)

eval "$(direnv hook zsh)"

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/walteranderson/.opam/opam-init/init.zsh' ]] || source '/Users/walteranderson/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

###
# Prompt
###

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats ' on %F{red}%b%f%F{yellow}%u%f%F{green}%c%f'

PROMPT='%~${vcs_info_msg_0_}
ツ '
