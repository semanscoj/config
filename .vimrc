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
" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'

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

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package:1',
        \ 'c:classes',
        \ 'i:interfaces',
        \ 't:traits',
        \ 'e:enums',
        \ 'm:methods',
        \ 'f:fields:1'
    \ ]
\ }


:let mapleader = "\<Space>"
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>, :TagbarToggle<cr>

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

set wildignore+=*.swp,*.git,*.js,*.class,*.gsp,*.data
set ignorecase

set tags=./tags,tags;$HOME

" Easy updates on vim rc
nmap <leader>v :edit $MYVIMRC<CR>
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif
