let mapleader=" "
syntax on
filetype plugin indent on

set nocompatible
set encoding=utf-8
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set ignorecase
set smartcase
set path+=**
set wildmenu

" netrw version of nvim-oil
" reload config
nnoremap <leader>r :source ~/.vimrc<CR>

" Clear highlight
nnoremap <leader><CR> :noh<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
