cd ~

rm -f .gitconfig
rm -f .bashrc
rm -f .bash_profile
rm -rf .vim
rm -rf .vimrc

ln -s ~/.dotfiles/gitconfig .gitconfig
ln -s ~/.dotfiles/bashrc .bashrc
ln -s ~/.dotfiles/bash_profile .bash_profile
ln -s ~/.dotfiles/vim .vim
ln -s ~/.dotfiles/vim/vimrc .vimrc


