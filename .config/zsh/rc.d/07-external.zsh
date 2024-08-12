if [ "$(uname)" = "Darwin" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

	source <(fzf --zsh)

	eval "$(direnv hook zsh)"
fi

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/walteranderson/.opam/opam-init/init.zsh' ]] || source '/Users/walteranderson/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
