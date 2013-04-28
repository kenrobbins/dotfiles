#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/fholgado/minibufexpl.vim.git
git clone git://github.com/scrooloose/syntastic.git
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/mileszs/ack.vim.git
