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
Plugin 'altercation/vim-colors-solarized'
" kolmafia .ash syntax highlighting
Plugin 'quisquous/vim-kolmafia'
" C/C++ autocomplete, and some other things
" disabled because, despite being awesome when it works, it never works
"Plugin 'Valloric/YouCompleteMe'
" light-weight tab-completion
" pointless without tagfile
"Plugin 'ajh17/VimCompletesMe'
" tagfile generator
" needs something to provide ctags
"Plugin 'ludovicchabant/vim-gutentags'
" Generator for YCM config
"Plugin 'rdnetto/YCM-Generator'
" nice file/buffer explorer
Plugin 'kien/ctrlp.vim'

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
" allow buffers to remain loaded while out of view
set hidden

set autoindent
set noexpandtab
set shiftwidth=0
set nosmartindent
set nosmarttab
set softtabstop=0
set tabstop=2

set list
set listchars=tab:\|\ 

set showtabline=1

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

" some ycm shorthands
nnoremap <leader>f :YcmCompleter FixIt<cr>
nnoremap <leader>g :YcmDiag<cr>

" some ctrlp shorthands
nnoremap <leader>b :CtrlPBuffer<cr>

" cycle buffers like I used to cycle tabs
nnoremap <c-h> :bp<cr>
nnoremap <c-l> :bn<cr>

" wraps highlighted text
vnoremap <leader>" <esc>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>a'<esc>`<i'<esc>
vnoremap <leader>` <esc>a`<esc>`<i`<esc>
vnoremap <leader>( <esc>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>a}<esc>`<i{<esc>
vnoremap <leader>< <esc>a><esc>`<i<<esc>

" toggle highlighting all matches after a search
nnoremap <leader>h :set hlsearch!<cr>

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

" wrap commit messages at 72 characters
autocmd FileType gitcommit set textwidth=72

" just some shorthands
iabbrev ret return
iabbrev sstr std::string

" statusline stuff
set laststatus=2
set statusline=%f       "filename
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

