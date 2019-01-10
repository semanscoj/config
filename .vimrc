set nocompatible              " be iMproved, required
filetype off                  " required

" Start of vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Navigation plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'christoomey/vim-tmux-navigator'

" Code Manipulation
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" Syntax
Plugin 'sheerun/vim-polyglot'
Plugin 'thaerkh/vim-indentguides'
Plugin 'jiangmiao/auto-pairs'
" Alternative lexima.vim

"QOL
Plugin 'scrooloose/nerdcommenter'

" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rhubarb'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of vundle

:let mapleader = "\<Space>"

" Map ctrl s to save
noremap <C-s> :w<CR>

set showmode
set number

" CTRLP preferences
let g:ctrlp_by_filename=1

" Control tabs and auto indent
set tabstop=2    "  - tabs are at proper location
set softtabstop=2 " proper conversion from tab to spaces
set shiftwidth=2 "  - indenting is 2 spaces
set autoindent   "  - turns it on
set smartindent  "  - does the right thing (mostly) in programs
          
set wildignore+=*.swp,*.git,*.js,*.class,*.gsp
set ignorecase
