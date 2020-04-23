#!/bin/bash
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME reset HEAD --hard
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config status.showUntrackedFiles no

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

vim +PluginInstall +qall
tmux source ~/.tmux.conf && tmux new-session -d && sleep 1 && ~/.tmux/plugins/tpm/scripts/install_plugins.sh && tmux kill-server

if [ ! -d "$HOME/.vim/tmp" ]; then
	mkdir "$HOME/.vim/tmp"
fi

if [ ! -d "$HOME/.vim/undodir" ]; then
	mkdir "$HOME/.vim/undodir"
fi

ln -s ~/.snippets/ultisnips/ ~/.vim/ultisnips

tmux new -s dev-env -c $HOME
