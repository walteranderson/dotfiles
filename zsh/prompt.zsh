YELLOW="%F{yellow}"
MAGENTA="%F{magenta}"
BLUE="%F{blue}"
GREEN="%{$fg_bold[green]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"

function git_prompt_info {
  local ref=$(=git symbolic-ref HEAD 2> /dev/null)
  local gitst="$(=git status 2> /dev/null)"

  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      gitstatus=" %{$fg[red]%}unmerged$RESET"
    else
      gitstatus=" %{$fg[green]%}merged$RESET"
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    gitstatus=" $YELLOW!$RESET"
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    gitstatus=" $RED!$RESET"
  elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
    gitstatus=" $YELLOW*$RESET"
  else
    gitstatus=''
  fi

  if [[ -n $ref ]]; then
    echo "$BLUE${ref#refs/heads/}$RESET$gitstatus"
  fi
}

# return the full path working directory
# if in a git-repo, only return the git root directory
function get_pwd {
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

function name_and_host() {
  echo "%n@%m"
}

PROMPT='┌ $MAGENTA$(name_and_host)$RESET at $YELLOW$(get_pwd)$RESET on $(git_prompt_info)$RESET
└ $ '
