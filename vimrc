set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" RSpec
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
"let g:rspec_command = 'call Send_to_Tmux("ruby {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let mapleader = "\\"
