autoload -Uz compinit && compinit
zmodload zsh/complist

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors '' # use ls colors
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

compdef -d mpv

# tmuxinator completion
# only add if tmuxinator is present
if type tmuxinator > /dev/null; then
    source ~/.zsh/completion/tmuxinator.zsh
fi
