#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# default vim install is missing +clipboard
sudo apt-get install vim-gtk
sudo apt-get install ctags
sudo apt-get install silversearcher-ag
sudo apt-get install npm
sudo npm -g install js-beautify
