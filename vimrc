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
" Vim Plug {{{

call plug#begin('~/.vim/plugged')

" syntax checker
Plug 'scrooloose/syntastic'

" status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tmux
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'melonmanchan/vim-tmux-resizer'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
" Plug 'Valloric/MatchTagAlways'

" autoclosing quotes/brackets/parens
" Plug 'Raimondi/delimitMate'

" surround things with ({'" and more
Plug 'tpope/vim-surround'

" colorschemes
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'flazz/vim-colorschemes'

" search
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'

" file navigation
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" tags
Plug 'joonty/vim-taggatron'
Plug 'majutsushi/tagbar'

Plug 'wdalmut/vim-phpunit'
Plug 'zhaocai/GoldenView.Vim'

Plug 'junegunn/goyo.vim'

" Language-specific plugins
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'
Plug 'wavded/vim-stylus'
Plug 'cakebaker/scss-syntax.vim'
Plug 'StanAngeloff/php.vim'
Plug 'jwalton512/vim-blade'
Plug 'kchmck/vim-coffee-script'
Plug 'editorconfig/editorconfig-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'elzr/vim-json'
Plug 'keith/tmux.vim'
Plug 'jelera/vim-javascript-syntax'
" Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'posva/vim-vue'
Plug 'b4b4r07/vim-hcl'
Plug 'tfnico/vim-gradle'
Plug 'othree/html5.vim'
Plug 'elmcast/elm-vim'
Plug 'slim-template/vim-slim'
Plug 'dart-lang/dart-vim-plugin'

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
  set clipboard=unnamed

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

" }}}
" Color Scheme & Display {{{

syntax on
set t_Co=256

" dark theme
set background=dark
colorscheme hybrid_reverse

" light theme
" set background=light
" colorscheme solarized8_light_low

" highlight VCS conflict markers
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" set title of terminal to the file
  set title
" or relativenumber
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

" cycle between buffers
  noremap <leader>[ :bprevious<CR>
  noremap <leader>] :bnext<CR>

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

" auto change directory to match current file
  nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Laravel framework common files
  nmap <leader>lr :e app/Http/routes.php<CR>
  nmap <leader>lesp :e app/Providers/EventServiceProvider.php<CR>

" search using Ag
  nmap <leader>f :Ag<CR>

" close the buffer without messing with the splits
  nmap <leader>d :ene<CR>:bw #<CR>

" set the tab size on the fly
  nmap <leader>t4 :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
  nmap <leader>t2 :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

" run tests for the currently opened buffer
  nmap <leader>tf :!./vendor/bin/phpunit %<CR>


" }}}
" Functions {{{


" Prepare a new PHP class
function! Class()
    let name = input('Class name? ')
    let namespace = input('Any Namespace? ')

    if strlen(namespace)
        exec "normal i<?php namespace " . namespace . ";"
    else
        exec "normal i<?php \<C-m>"
    endif

    " Open class
    exec "normal iclass " . name . " {\<C-m>}\<C-[>O\<C-[>"

    exec "normal i\<C-M>    public function __construct()\<C-M>{\<C-M>\<C-M>}\<C-[>"
endfunction
nmap <leader>1  :call Class()<cr>


" Add a new dependency to a PHP class
function! AddDependency()
    let dependency = input('Var Name: ')
    let namespace = input('Class Path: ')

    let segments = split(namespace, '\')
    let typehint = segments[-1]

    exec 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['

    " Remove opening comma if there is only one dependency
    exec 'normal :%s/(, /(/g'
endfunction
nmap <leader>2  :call AddDependency()<cr>

function! SearchAndReplace()
    let find = input('Find: ')
    let replace = input('Replace: ')

    exec ':%s/' . find . '/' . replace . '/g'
endfunction

nmap <leader>sr :call SearchAndReplace()<cr>



" }}}
" Plugin Settings {{{
" Airline {{{

let g:airline#extensions#tabline#enabled = 0

" enable/disable status bar at the system level
  set laststatus=2

" set the theme
  " dark theme
  let g:airline_theme='distinguished'
  " light theme
  " let g:airline_theme='lucius'


" enable powerline fonts
  let g:airline_powerline_fonts = 1


" disable the `vim-gitgutter` diff hunks
   let g:airline#extensions#hunks#enabled = 0

" }}}
" NerdTree {{{

" updating this remapping to match spacemacs
map <leader>pt :NERDTreeToggle<CR>
" :vertical resize 40<CR>

let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=0

" close nerdtree if it is the only window left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" }}}
" Syntastic {{{

map <leader>sc :SyntasticCheck<CR>

" using signs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = ">>"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = ">>"

" using the quickfix window
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0

" PHP checker
let g:syntastic_php_checkers = ["php", "phpcs"]
let g:syntastic_php_phpcs_args = "--standard=PSR2 -n"

" Javascript checker
" let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_checkers = ["eslint"]
" let g:syntastic_eslint_args = "-c ~/.dotfiles/.eslintrc --parser babel-eslint"

" SCSS checker
" let g:syntastic_scss_checkers = ["stylelint"]

" Go checker
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" do not check for errors on save
" let g:syntastic_mode_map = { "mode": "passive" }

" Elm
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:elm_syntastic_show_warnings = 1

let g:syntastic_html_checkers=['']
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
let g:syntastic_check_on_wq = 0

let g:syntastic_quiet_messages = { "regex": 'camel caps format' }

" }}}
" Fugitive {{{

nnoremap <Leader>gst :Gstatus<CR>

" }}}
" Magit {{{

nnoremap <Leader>gd :Magit<CR>

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
" Emmet {{{

let g:user_emmet_leader_key=','

" }}}
" EditorConfig {{{

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" }}}
" PHPUnit {{{

let g:phpunit_cmd = './vendor/bin/phpunit'

" }}}
" indentLine {{{

let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
let g:indentLine_noConcealCursor=""

" }}}
" MatchTagAlways {{{

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'blade' : 1,
    \}

" }}}
" fzf {{{


" view open buffers
  " noremap <leader>j :Buffers<CR>

" fuzzy find files
  noremap <leader>pf :Files<CR>

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

" }}}
" Multiple Cursors {{{

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" }}}
" CtrlP {{{

" file/symbol searching
  " noremap <leader>p :CtrlP<CR>

" buffer search
  noremap <leader>r :CtrlPBufTag<CR>

" search for filename in open buffers
  noremap <leader>j :CtrlPBuffer<CR>


" remapping keyboard shortcuts inside the CtrlP window
  let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
    \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
    \ 'PrtHistory(-1)':       [''],
    \ 'PrtHistory(1)':        [''],
    \ }

" }}}
" Notes {{{

" Ctags
" - run `ctags -R` in project directory to generate `tags` file
" - :tag <search string>
"   - :tn and :tp to navigate between tags
" - C-] on a method to go to it's definition
"   - C-^ to go back

" }}}
" Tmuxline {{{


let g:tmuxline_preset = 'powerline'


" }}}
" JSON {{{

let g:vim_json_syntax_conceal = 0

" }}}
" vim-javascript {{{

let g:javascript_enable_domhtmlcss=1

" }}}
" vim-typescript {{{

let g:typescript_compiler_options = '-experimentalDecorators'

" }}}
" taggatron {{{

let g:tagcommands = {
\    "php" : { "tagfile": "tags", "args": "-R", "cmd": "ctags" }
\}

" }}}
" vim-go {{{

" turn off some ridiculous defaults
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_textobj_enabled = 0


" lint on save
let g:go_metalinter_autosave = 0


" }}}
" golden ratio {{{

let g:goldenview__enable_default_mapping = 0

noremap <leader>gt :ToggleGoldenViewAutoResize<CR>

" }}}
" Elm {{{

let g:elm_format_autosave = 1

" }}}
" TagBar {{{

let g:tagbar_autoclose = 0
let g:tagbar_left = 1

nnoremap <leader>o :TagbarToggle<CR>

" }}}