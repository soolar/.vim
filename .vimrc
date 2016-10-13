set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" git plugin
Plugin 'tpope/vim-fugitive'
" solarized dark
Plugin 'altercation/vim-colors-solarized.git'
" kolmafia .ash syntax highlighting
Plugin 'quisquous/vim-kolmafia.git'
" C/C++ autocomplete, and some other things
Plugin 'Valloric/YouCompleteMe'
" Generator for YCM config
Plugin 'rdnetto/YCM-Generator'
" fancy start screen
Plugin 'mhinz/vim-startify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number
set linebreak
set showbreak=+++
set textwidth=100
set noshowmatch
set visualbell
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

set showtabline=2

set undolevels=1000
set backspace=indent,eol,start

" highlight current line
set cursorline
" keep the cursor in the middle row of the screen when possible
set scrolloff=999

let mapleader = ","
let maplocalleader = "\\"

set background=dark
colorscheme solarized

" capitalize current word
nnoremap <leader>u viwUel

" strip trailing whitespace
nnoremap <leader>st :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar><cr>

" open up/reload this file
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
noremap H g0
noremap L g$

" return to normal mode without stretching fingers
inoremap jk <esc>

" stop allowing arrow keys to break that habit
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
" also stop allowing esc to exit insert to train myself to use the jk mapping
inoremap <esc> <nop>

" just some shorthands
iabbrev ret return
iabbrev sstr std::string

" statusline stuff
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=\ %{fugitive#statusline()}

