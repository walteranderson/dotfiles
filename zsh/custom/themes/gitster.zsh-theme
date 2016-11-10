# vi: set ft=zsh :

YELLOW="%F{yellow}"
MAGENTA="%F{magenta}"
BLUE="%F{blue}"
GREEN="%{$fg_bold[green]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"
# BLUE="%{$fg_bold[blue]%}"
# YELLOW="%{$fg_bold[yellow]%}"

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

# function git_prompt_info() {
#   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#   echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
# }

function name_and_host() {
  echo "%n@%m"
}

PROMPT='┌ $MAGENTA$(name_and_host)$RESET at $YELLOW$(get_pwd)$RESET $(git_prompt_info)$RESET
└ $ '

ZSH_THEME_GIT_PROMPT_PREFIX="on $BLUE "
ZSH_THEME_GIT_PROMPT_SUFFIX=""

ZSH_THEME_GIT_PROMPT_DIRTY=" $RED✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN✔"
