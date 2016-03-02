set nocompatible

" Whitespace
set sw=2
set tabstop=2

" Numbering
set relativenumber
set number

" Search
set incsearch
set hlsearch

" Indentation
set cindent
set expandtab

" Plugins
set updatetime=250 " vim-gitgutter

set wildmode=longest,list

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()

" Leader
let mapleader = "\<Space>"

" RSpec
let test#strategy = "vimux"
let g:surround_45 = "<% \r %>"
let g:surround_62 = "<%= \r %>"
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>t :TestNearest<CR>

nmap <silent> <leader>b :Gblame<CR>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Bubbling lines up/down
nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

" Split lines
map K i<Enter><Esc>

" Keep your eye on the prize
set scrolloff=2

map <c-p> :FZF -m<CR>
