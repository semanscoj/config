set nocompatible              " be iMproved, required
filetype off                  " required

" Start of vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Navigation plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'

" Code Manipulation
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tommcdo/vim-exchange'

" Text Objects
Plugin 'michaeljsmith/vim-indent-object'

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

" change the timing to get out of insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" set python binary for you complete me plugin
let g:ycm_server_python_interpreter = '/usr/bin/python'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories=["ultisnips"]

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

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Leader key mappings

:let mapleader = "\<Space>"
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>, :TagbarToggle<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>/ :Ack! ''<left>
nnoremap <leader>s :s:\s*\(\w\+\)\(,\\|$\):\rdef \1 = :g<cr><s-{>dd
nnoremap <leader>g :Gstatus<cr>
nnoremap <leader><leader> <s-^>
nnoremap <leader>u :! grails test-app --unit %:t:r<cr>
nnoremap <leader>i :! grails test-app --integration %:t:r<cr>
nnoremap <CR> o<Esc>

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
