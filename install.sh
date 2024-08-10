#!/usr/bin/env bash

is_mac() {
	if [ "$(uname)" == "Darwin" ]; then
		return 1
	else
		return 0
	fi
}

echo "========================"
echo '>>> Starting Install'
echo "========================"

###########
# Homebrew
###########

if [ "$(is_mac)" != 1]; then
	echo '>>> Skipping Homebrew - not on a Mac'
	exit 0
fi

if ! type "brew" > /dev/null; then
  echo '>>> Installing Homebrew...'

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo '>>> Homebrew already installed'
fi

echo '>>> Installing packages...'

packages=(
  'neovim'
  'tmux'
  'stow'
  'fzf'
  'zsh-syntax-highlighting'
  'wget'
)

casks=(
	'iterm2'
)

for package in "${packages[@]}"
do
  echo ">>> brew install ${package}"
  brew install $package
  echo "========================"
done

echo '>>> Installing casks...'

for package in "${casks[@]}"
do
  echo ">>> brew install ${package} --cask"
  brew install $package --cask
  echo "========================"
done

###########
# iterm2
###########

if is_mac; then
	if [ -f ~/Library/Preferences/com.googlecode.iterm2.plist ]; then
		echo '>>> Copying iterm2 config...'
		cp com.googlecode.iterm2.plist ~/Library/Preferences
	else
		echo '>>> iterm2 config already exists'
	fi
fi

###########
# NVM
###########

if [ -s "$NVM_DIR/nvm.sh" ]; then
	echo '>>> NVM already installed'
else
	echo '>>> Installing NVM...'
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
fi

