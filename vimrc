set nocompatible

set sw=2
set tabstop=2

set relativenumber
set number

set incsearch
set hlsearch

set cindent
set expandtab
set wildmode=longest,list

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'

call plug#end()

" RSpec
let mapleader = "\\"
let test#strategy = "vimux"
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>t :TestNearest<CR>

nmap <silent> <leader>b :Gblame<CR>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map <c-p> :FZF -m<CR>
