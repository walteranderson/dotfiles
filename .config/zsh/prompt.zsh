autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats ' on %F{red}%b%f%F{yellow}%u%f%F{green}%c%f'

# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
PROMPT='[%n@%m] %~${vcs_info_msg_0_}
%# '
