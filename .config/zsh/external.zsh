# https://github.com/awslabs/aws-shell
# export AWS_PROFILE=dev

if is_mac; then
  # https://brew.sh/
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # https://github.com/zsh-users/zsh-syntax-highlighting
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # https://github.com/nvm-sh/nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

elif is_linux; then
  # asdf - https://asdf-vm.com/
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

  # TODO: refactor so mac/linux use the same syntax-highlighting source
  # https://github.com/zsh-users/zsh-syntax-highlighting
  if [ ! -d ~/opt/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/opt/zsh-syntax-highlighting
  fi
  source ~/opt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # pnpm - https://pnpm.io/installation
  export PNPM_HOME="/home/walter/.local/share/pnpm"
  case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
  esac
fi

# https://github.com/junegunn/fzf
source <(fzf --zsh)

# https://github.com/direnv/direnv
if [ -x "$(command -v direnv)" ]; then
	eval "$(direnv hook zsh)"
fi
