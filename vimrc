set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set sw=2
set relativenumber 
set number 
set incsearch
set hlsearch
set cindent

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'jgdavey/tslime.vim'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" RSpec
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
"let g:rspec_command = 'call Send_to_Tmux("ruby {spec}\n")'
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
