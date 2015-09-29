cd ~

rm -f .gitconfig
rm -f .git-completion.bash
rm -f .bashrc
rm -f .bash_profile
rm -rf .vim
rm -rf .vimrc
rm -rf .zshrc

ln -s ~/.dotfiles/zshrc .zshrc
ln -s ~/.dotfiles/gitconfig .gitconfig
ln -s ~/.dotfiles/git-completion.bash .git-completion.bash
ln -s ~/.dotfiles/bashrc .bashrc
ln -s ~/.dotfiles/bash_profile .bash_profile
ln -s ~/.dotfiles/vim .vim
ln -s ~/.dotfiles/vim/vimrc .vimrc

cp ~/.dotfiles/custom.zsh-theme ~/.dotfiles/zsh/themes/custom.zsh-theme
