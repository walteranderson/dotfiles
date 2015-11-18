cd ~

rm -f .gitconfig
rm -f .git-completion.bash
rm -f .bashrc
rm -f .bash_profile
rm -rf .vim
rm -rf .vimrc
rm -rf .gvimrc
rm -rf .zshrc
rm -rf .tmux.conf

ln -s ~/.dotfiles/zshrc .zshrc
ln -s ~/.dotfiles/gitconfig .gitconfig
ln -s ~/.dotfiles/git-completion.bash .git-completion.bash
ln -s ~/.dotfiles/bashrc .bashrc
ln -s ~/.dotfiles/bash_profile .bash_profile
ln -s ~/.dotfiles/vim .vim
ln -s ~/.dotfiles/vim/vimrc .vimrc
ln -s ~/.dotfiles/vim/gvimrc .gvimrc
ln -s ~/.dotfiles/tmux.conf  .tmux.conf

cp ~/.dotfiles/custom.zsh-theme ~/.dotfiles/zsh/themes/custom.zsh-theme
