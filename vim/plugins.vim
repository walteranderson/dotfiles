" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif
 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" syntax checker
NeoBundle 'scrooloose/syntastic'

" status bar
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'edkolev/tmuxline.vim'

" git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'jreybert/vimagit'

NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'wincent/terminus'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Valloric/MatchTagAlways'

" autoclosing quotes/brackets/parens
NeoBundle 'Raimondi/delimitMate'

" colorschemes
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'kristijanhusak/vim-hybrid-material'
NeoBundle 'w0ng/vim-hybrid'

" search
NeoBundle 'rking/ag.vim'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
NeoBundle 'junegunn/fzf.vim'

" file navigation
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'


NeoBundle 'taglist.vim'
NeoBundle 'wdalmut/vim-phpunit'
NeoBundle 'roman/golden-ratio'

" Language-specific plugins
NeoBundle 'fatih/vim-go'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'groenewege/vim-less'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'xsbeats/vim-blade'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'posva/vim-vue'
NeoBundle 'othree/yajs.vim'

call neobundle#end()
" Required:
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
