set nocompatible
set rtp+=~/.fzf
set sw=2
set relativenumber
set number
set incsearch
set hlsearch
set cindent
set expandtab
set tabstop=2
set wildmode=longest,list

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
" Plug 'jgdavey/tslime.vim'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'

call plug#end()

" RSpec
let g:rspec_command = 'call Send_to_Tmux("bin/rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let mapleader = "\\"

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map <c-p> :FZF -m<CR>
