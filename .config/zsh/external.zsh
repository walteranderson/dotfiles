# https://github.com/awslabs/aws-shell
# export AWS_PROFILE=dev

# https://brew.sh/
if [ "$(uname)" = "Darwin" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # https://github.com/zsh-users/zsh-syntax-highlighting
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif command -v apt > /dev/null; then
  # asdf - https://asdf-vm.com/
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

  # pnpm - https://pnpm.io/installation
  export PNPM_HOME="/home/walter/.local/share/pnpm"
  case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
  esac
  # pnpm end
fi

# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
load_nvm() {
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

# https://github.com/junegunn/fzf
source <(fzf --zsh)

# https://github.com/direnv/direnv
if [ -x "$(command -v direnv)" ]; then
	eval "$(direnv hook zsh)"
fi

# https://ocaml.org/
# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/walteranderson/.opam/opam-init/init.zsh' ]] || source '/Users/walteranderson/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
