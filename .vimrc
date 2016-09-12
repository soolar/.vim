
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

" wraps highlighted text
vnoremap <leader>" <esc>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>a'<esc>`<i'<esc>
vnoremap <leader>` <esc>a`<esc>`<i`<esc>
vnoremap <leader>( <esc>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>a}<esc>`<i{<esc>
vnoremap <leader>< <esc>a><esc>`<i<<esc>

" turns off highlighting all matches after a search
nnoremap <leader>h :nohlsearch<cr>

" move lines of text up or down
nnoremap <c-j> :m +1<cr>
nnoremap <c-k> :m -2<cr>

" strong left and right
nnoremap H g0
nnoremap L g$

" exit insert mode without stretching fingers
inoremap jk <esc>

" stop allowing arrow keys to break that habit
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" just some shorthands
iabbrev ret return

