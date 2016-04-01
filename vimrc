set encoding=utf-8

inoremap jk <esc>

set number
set relativenumber
set hlsearch
set nowrap
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

let g:netrw_liststyle=3

syntax enable
set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
colorscheme hybrid

execute pathogen#infect()
filetype plugin indent on

" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" let NERDTreeMinimalUI=1

" Highlights characters over position 79 in line
highlight OverLength ctermbg=237 guibg=#3a3a3a
match OverLength /\%80v.\+/

" Configure vim airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_close_button=0
let g:airline_theme="powerlineish"

let mapleader = "_"
let maplocalleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <leader>t :Explore<cr>
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

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

let g:SuperTabDefaultCompletionType = "context"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
