#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# default vim install is missing +clipboard
apt-get install -y vim-gtk ctags silversearcher-ag tmux tmuxinator

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
