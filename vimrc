echo ">^.^<"

set encoding=utf-8

inoremap jk <esc>
vnoremap jk <esc> 

set number
set hlsearch
set nowrap
set shiftwidth=4

syntax enable
set guifont=Consolas:h9:cANSI
colorscheme hybrid

execute pathogen#infect()
filetype plugin indent on

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeMinimalUI=1

let mapleader = "_"
let maplocalleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <leader>- ddp
noremap <leader>_ ddkkp
inoremap <c-u> <esc>viwU<esc>eli
nnoremap <c-u> viwU<esc>e
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

:iabbrev @@ charles.dejardin@gmail.com
:iabbrev ccopy Copyright 2014 Charles-Marie Dejardin, all rights reserved.
:iabbrev ssig --<cr>Charles-Marie Dejardin<cr>charles.dejardin@gmail.com

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
