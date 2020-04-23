#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

vim +PluginInstall +qall
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh

if [ ! -d "$HOME/.vim/tmp" ]; then
	mkdir "$HOME/.vim/tmp"
fi

if [ ! -d "$HOME/.vim/undodir" ]; then
	mkdir "$HOME/.vim/undodir"
fi

ln -s ~/.snippets/ultisnips/ ~/.vim/ultisnips
