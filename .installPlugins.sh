#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# default vim install is missing +clipboard
apt-get install vim-gtk
apt-get install ctags
apt-get install silversearcher-ag
apt-get install tmux
apt-get install tmuxinator

vim +PluginInstall +qall
~/.tmux/plugins/tpm/scripts/install_plugins.sh

if [ ! -d "$HOME/.vim/tmp" ]; then
	mkdir "$HOME/.vim/tmp"
fi

if [ ! -d "$HOME/.vim/undodir" ]; then
	mkdir "$HOME/.vim/undodir"
fi

ln -s ~/.snippets/ultisnips/ ~/.vim/ultisnips
# Vim You Complete Me Plugin Requirements
apt-get install cmake python-dev
mkdir /tmp/ycm_build
cmake -G "Unix Makefiles" /tmp/ycm_build  ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build /tmp/ycm_build --target ycm_core --config Release
rm -rf BoostParts  CMakeCache.txt  CMakeFiles  Makefile  cmake_install.cmake  compile_commands.json ycm
