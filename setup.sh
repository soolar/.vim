#!/bin/bash
ln -s ~/.vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/quisquous/vim-kolmafia.git
