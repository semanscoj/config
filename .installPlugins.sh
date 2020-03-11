#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# default vim install is missing +clipboard
sudo apt-get install vim-gtk
sudo apt-get install ctags
sudo apt-get install silversearcher-ag
sudo apt-get install tmux
sudo apt-get install tmuxinator

if [ ! -d "$HOME/.vim/tmp" ]; then
	mkdir "$HOME/.vim/tmp"
fi

if [ ! -d "$HOME/.vim/undodir" ]; then
	mkdir "$HOME/.vim/undodir"
fi

ln -s ~/.snippets/ultisnips/ ~/.vim/ultisnips
# Vim You Complete Me Plugin Requirements
sudo apt-get install cmake python-dev
mkdir /tmp/ycm_build
cmake -G "Unix Makefiles" /tmp/ycm_build  ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build /tmp/ycm_build --target ycm_core --config Release
