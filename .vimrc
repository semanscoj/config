set nocompatible              " be iMproved, required
filetype off                  " required

" Start of vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Navigation plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'

"QOL
Plugin 'scrooloose/nerdcommenter'

" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rhubarb'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of vundle

:let mapleader = "\<Space>"

" Map ctrl s to save
noremap <C-s> :w<CR>

set showmode
set number

" Control tabs and auto indent
set tabstop=4    "  - tabs are at proper location
set expandtab    "  - don't use actual tab character (ctrl-v)
set shiftwidth=4 "  - indenting is 4 spaces
set autoindent   "  - turns it on
set smartindent  "  - does the right thing (mostly) in programs
          
set wildignore+=*.swp
set ignorecase
