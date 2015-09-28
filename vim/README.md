## Configuration Instructions

Installation:

    git clone https://github.com/walteranderson/vim-config.git ~/.vim 


Create symlink for vimrc and (optionally) gvimrc:

    ln -s ~/.vim/vimrc ~/.vimrc

    ln -s ~/.vim/gvimrc ~/.gvimrc

Add new plugin:

    NeoBundle 'kien/ctrlp.vim'

Close and re-open the file, select (y)es to download plugins.


To update plugins:

    :NeoBundleUpdate
