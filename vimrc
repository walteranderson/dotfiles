"     oooooo     oooo ooooo ooo        ooooo ooooooooo.     .oooooo
"      `888.     .8'  `888' `88.       .888' `888   `Y88.  d8P'  `Y8b
"       `888.   .8'    888   888b     d'888   888   .d88' 888
"        `888. .8'     888   8 Y88. .P  888   888ooo88P'  888
"         `888.8'      888   8  `888'   888   888`88b.    888
" .o.      `888'       888   8    Y     888   888  `88b.  `88b    ooo
" Y8P       `8'       o888o o8o        o888o o888o  o888o  `Y8bood8P'
"
" Author:     Walter Anderson <walteranderson19@gmail.com>
" Repository: https://github.com/walteranderson/dotfiles
"
" Init {{{

" vim-polyglot requires this variable be declared before loading the plugin
let g:polyglot_disabled = ['markdown']

" }}}
" Vim Plug {{{

call plug#begin('~/.vim/plugged')

" syntax checker
Plug 'w0rp/ale'

" status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tmux
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

" git
Plug 'airblade/vim-gitgutter'
" adding this only for the :Gblame command
Plug 'tpope/vim-fugitive'

" fuzzy-finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" everything else
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'zhaocai/GoldenView.Vim'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'leafOfTree/vim-svelte-plugin'

" removing in favor of *gn command
" Plug 'terryma/vim-multiple-cursors'

call plug#end()

" }}}
" Basic Options {{{

filetype plugin indent on
set nocompatible
set hidden
set expandtab
set encoding=utf-8
set nowrap
set visualbell
set ruler
set history=1000
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed


" setting the length of a tab
  set tabstop=4 shiftwidth=4
" use mouse in terminal
  set mouse=a
" maintain context around cursor
  set scrolloff=10

" better copy and paste
  set pastetoggle=<F2>
  set clipboard+=unnamed

" display incomplete commands
  set showcmd
" backspace through everything in insert mode
  set backspace=indent,eol,start
" Show partial commands on last line of window
  set showcmd
" automatically reload buffers when file changes
  set autoread

" Resize splits when the window is resized
  au VimResized * :wincmd =

 " more natural split opening
   set splitbelow
   set splitright

" force .md files to be markdown
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufNewFile,BufReadPost *.md set wrap

" list characters
  set list
  " set listchars=tab:»·,nbsp:·,trail:·,eol:¬,extends:❯,precedes:❮
  set listchars=tab:··,nbsp:·,trail:·,extends:❯,precedes:❮
  set showbreak=↪

" reduce the updatetime from the default (4000ms) to 100ms
  set updatetime=100

" set the foldmethod to use syntax by default
  set foldmethod=syntax

" }}}
" Color Scheme & Display {{{

syntax on
set t_Co=256

set background=dark
colorscheme hybrid_reverse

" light theme
" set background=light
" colorscheme gruvbox

" highlight VCS conflict markers
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" set title of terminal to the file
  set title

" add line numbering (relative or absolute)
  " set relativenumber
  set number

" add line markers at 80 characters and 120 characters
  set colorcolumn=80,120

" }}}
" Searching {{{

" highlight matches
set hlsearch
" incremental searching
set incsearch
" searches are case insensitive...
set ignorecase
" ... unless they contain at least one capital letter
set smartcase

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" }}}
" Backups {{{

set backup
set noswapfile

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" }}}
" Folding {{{

set foldlevelstart=0
set foldmethod=marker

" }}}
" Remapping {{{

" Leader key
  let mapleader = "\<Space>"

" HJKL - quickly move through the document
  noremap H ^
  noremap L g_
  noremap J 5j
  noremap K 5k

" move through display lines
  nnoremap k gk
  nnoremap j gj

" remap ; to do :'s job
  noremap ; :

" easier movement between splits
  noremap <C-j> <C-W>j<CR>
  noremap <C-k> <C-W>k<CR>
  noremap <C-h> <C-W>h<CR>
  noremap <C-l> <C-W>l<CR>

" increase vertical split size
  nmap <leader>v :vertical resize +10<CR>

" close buffer
  map <leader>w :bd<CR>

" easy save
  noremap <leader><cr> :update<cr>

" disable vim insert mode completion
  inoremap <C-P> <nop>

" stay in visual mode when changing indentation
  vnoremap < <gv
  vnoremap > >gv

" pressing return clears higlighted search
  noremap <cr> :nohlsearch<cr>/<bs>

" search using Ag
  nmap <leader>g :Ag<CR>

" close the buffer without messing with the splits
  nmap <leader>d :ene<CR>:bw #<CR>

" set the tab size on the fly
  nmap <leader>t4 :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
  nmap <leader>t2 :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

" beautify some selected JSON
  map <leader>bjson :!jq '.'<cr>

" disable command history keybinding
  nnoremap q: <nop>
  nnoremap Q <nop>

" }}}
" Plugin Settings {{{
" ALE {{{

" define which linters to use based on file type
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'svelte': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\}
let g:ale_linters = {
\   'javascript': ['prettier', 'eslint'],
\   'svelte': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\}

" let g:ale_linters_explicit = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 0

" keep the gutter open at all times
let g:ale_sign_column_always = 1

" customize the error/warning icons displayed in the gutter
let g:ale_sign_error = '!!'
let g:ale_sign_warning = "⚠"


" run the ALE fixer (af = ale fix)
nmap <leader>af :ALEFix<CR>

" }}}
" Airline {{{

let g:airline#extensions#tabline#enabled = 0

" enable/disable status bar at the system level
set laststatus=2

" set the theme
let g:airline_theme='hybrid'


" enable powerline fonts
let g:airline_powerline_fonts = 1


" disable the `vim-gitgutter` diff hunks
let g:airline#extensions#hunks#enabled = 0

" }}}
" Commentary {{{

autocmd FileType php setlocal commentstring=//\ %s

" }}}
" Utilsnips {{{

" path to snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.dotfiles/vim/snippets']
let g:UltiSnipsEnableSnipMate=0
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" }}}
" indentLine {{{

let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
let g:indentLine_noConcealCursor=""

" }}}
" fzf {{{


" view open buffers
  noremap <leader>j :Buffers<CR>

" fuzzy find files
  noremap <leader>f :Files<CR>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
" - window (nvim only)
let g:fzf_layout = { 'down': '~30%' }

" For Commits and BCommits to customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Advanced customization using autoload functions
autocmd VimEnter * command! Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})

" exclude file name results from Ag
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" shut up W
command W w

" }}}
" Multiple Cursors {{{

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" }}}
" Tmuxline {{{


let g:tmuxline_preset = 'powerline'
let g:tmuxline_powerline_separators = 1


" }}}
" golden ratio {{{

let g:goldenview__enable_default_mapping = 0

" noremap <leader>gt :ToggleGoldenViewAutoResize<CR>

" }}}
" Git Gutter {{{

" disable all git-gutter keybindings
let g:gitgutter_map_keys = 0

" }}}
" NERDTree {{{

" updating this remapping to match spacemacs
map <leader>m :NERDTreeToggle<CR>

" show hidden files
let g:NERDTreeShowHidden=1

" closes nerdtree when you open a file
let g:NERDTreeQuitOnOpen=1

" tells nerdtree to NOT collapse directories that only have one child
let NERDTreeCascadeSingleChildDir=0

" }}}
" Vim Polyglot {{{

" the default markdown syntax does too much magic type stuff for my taste
let g:polyglot_disabled = ['markdown']

" }}}
" Svelte Plugin {{{

let g:vim_svelte_plugin_load_full_syntax = 1
let g:vim_svelte_plugin_use_typescript = 1

" }}}
