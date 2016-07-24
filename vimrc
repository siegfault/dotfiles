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
Plug 'ecomba/vim-ruby-refactoring'
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mcasper/vim-infer-debugger'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Leader
let mapleader = "\<Space>"

" RSpec
let test#strategy = "vimux"
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>t :TestNearest<CR>

" Surround
let g:surround_45 = "<% \r %>"
let g:surround_62 = "<%= \r %>"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Indent Guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

nmap <silent> <leader>b :Gblame<CR>
nmap <silent> <leader>n :set nu!<CR>:set rnu!<CR>

" Easy debugger adding/removal
nmap <Leader>P :call AddDebugger("O")<cr>
nmap <Leader>p :call AddDebugger("o")<cr>
nmap <Leader>d :call RemoveAllDebuggers()<cr>

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

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='sol'

" tmuxline.vim
let g:tmuxline_powerline_separators = 0

map <c-p> :FZF -m<CR>

" Automatic git commit wrapping
autocmd Filetype gitcommit setlocal spell textwidth=72

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None term=None cterm=None gui=None
  autocmd InsertEnter * highlight CursorLine ctermbg=lightblue ctermfg=None term=None cterm=None gui=None
aug END

aug AutoloadVimrc
  au!
  au BufWritePost ~/dotfiles/vimrc source ~/.vimrc
  au BufWritePost ~/.vimrc source ~/.vimrc
aug END
