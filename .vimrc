
set number
set linebreak
set showbreak=+++
set textwidth=100
set noshowmatch
set visualbell
" highlight all search matches
set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2


set ruler
set showtabline=2

set undolevels=1000
set backspace=indent,eol,start

let mapleader = "-"
let maplocalleader = "\\"

execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

nnoremap <leader>- ddp
nnoremap <leader>_ ddkkp
nnoremap <leader>u viwUel
inoremap <leader>u <esc>viwUeli

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>l
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>l
vnoremap <leader>` <esc>`<i`<esc>`>la`<esc>l
vnoremap <leader>( <esc>`<i(<esc>`>la)<esc>l
vnoremap <leader>[ <esc>`<i[<esc>`>la]<esc>l
vnoremap <leader>{ <esc>`<i{<esc>`>la}<esc>l

nnoremap <leader>h :nohlsearch<cr>

nnoremap <c-j> :m +1<cr>
nnoremap <c-k> :m -2<cr>

nnoremap H g0
nnoremap L g$

