if command -v fzf > /dev/null; then
	source <(fzf --zsh)
fi

if command -v direnv > /dev/null; then
	eval "$(direnv hook zsh)"
fi

if command -v brew > /dev/null; then
	eval "$(brew shellenv)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
