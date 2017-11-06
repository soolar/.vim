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
Plugin 'maralla/completor.vim'
" tagfile generator
Plugin 'ludovicchabant/vim-gutentags'
" Generator for YCM config
"Plugin 'rdnetto/YCM-Generator'
" nice file/buffer explorer
Plugin 'kien/ctrlp.vim'
" undo tree visualizer
Plugin 'mbbill/undotree'
" kill buffer without closing window with :BD
Plugin 'qpkorr/vim-bufkill'
" search integration
Plugin 'mileszs/ack.vim'
" some convenient mappings
Plugin 'tpope/vim-unimpaired'

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

set t_Co=256

let mapleader = ","
let maplocalleader = "\\"

set background=dark
colorscheme solarized

" capitalize current word
nnoremap <leader>u viwUel

nnoremap <leader>v "+p

" strip trailing whitespace
nnoremap <leader>st :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar><cr>

" open up/reload this file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" some ycm shorthands
nnoremap <leader>f :YcmCompleter FixIt<cr>
nnoremap <leader>g :YcmDiag<cr>

" toggle undotree
nnoremap <leader>u :UndotreeToggle<cr>
let g:undotree_SetFocusWhenToggle=1

" some ctrlp shorthands
nnoremap <leader>b :CtrlPBuffer<cr>

" completor semantic engines
let g:completor_clang_binary = '/usr/bin/clang'

" make ack.vim use ag
let g:ackprg = "ag --vimgrep"
nnoremap <leader>k :Ack "\b<cword>\b" <cr>

" completor hotkeys
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

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

" move line of text up or down
nnoremap <c-j> :m +1<cr>
nnoremap <c-k> :m -2<cr>

" convenient alternative to home/end
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

" Jump to diff marks
nnoremap <leader>jd :set hlsearch<cr>/>>>> ORIGINAL\\|==== THEIRS\\|==== YOURS\\|<<<< END<cr>

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
set statusline+=C:%c\   "cursor column
set statusline+=L:%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=\ %{fugitive#statusline()}

"""""""""""""""""""""""""""""""
" Stuff specifically for work "
"""""""""""""""""""""""""""""""
if $ENLISTMENTNAME == "v-jokich-macpro-apexmain"
  set background=light
endif

" Open up a diff between the file and the apexmain version
nnoremap <leader>da :execute "vert diffsplit /apexmain/" . @%<cr>
" Turn diff mode off
nnoremap <leader>do :set nodiff noscrollbind nocursorbind<cr>
" Update the diff
nnoremap <leader>du :diffupdate<cr>

" Highlight a function from it's opening {
nnoremap <leader>vf ($%v][

" some sd helpers
nnoremap <leader>se :!sd edit %<cr>
nnoremap <leader>sd :!sd diff %<cr>
nnoremap <leader>sr :!sd revert %<cr>

