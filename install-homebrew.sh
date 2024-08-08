if ! type "brew" > /dev/null; then
  echo 'Installing Homebrew...'

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo 'Homebrew already installed'
fi

echo 'Installing homebrew packages...'

packages=(
  'neovim'
  'tmux'
  'stow'
  'fzf'
)

for package in "${packages[@]}"
do
  echo " -- brew install ${package}"
  brew install $package
done
