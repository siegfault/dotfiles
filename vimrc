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
set ignorecase
set smartcase

" Indentation
set cindent
set expandtab

" Plugins
set updatetime=250 " vim-gitgutter

set history=200

set wildmenu
set wildmode=full

runtime macros/matchit.vim

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-localorie'
Plug 'airblade/vim-gitgutter'
Plug 'andrewradev/splitjoin.vim'
Plug 'andrewradev/switch.vim'
Plug 'benmills/vimux'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'edkolev/tmuxline.vim'
Plug 'exu/pgsql.vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/vim-easy-align'
Plug 'KeitaNakamura/neodark.vim'
Plug 'maralla/completor.vim'
Plug 'mcasper/vim-infer-debugger'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/SQLUtilities'

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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

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
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

nmap <silent> <leader>b :Gblame<CR>
nmap <silent> <leader>n :set nu!<CR>:set rnu!<CR>

" Completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>"

" Easy debugger adding/removal
nmap <Leader>P :call AddDebugger("O")<cr>
nmap <Leader>p :call AddDebugger("o")<cr>
nmap <Leader>d :call RemoveAllDebuggers()<cr>

nmap <Leader>pg :set syntax=pgsql<cr>

" Locale expansion
nnoremap <silent> <leader>lt :call localorie#translate()<CR>
nnoremap <silent> <leader>le :call localorie#expand_key()<CR>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Scroll through history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Expand current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Bubbling lines up/down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

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

" Sql formatting
vmap <silent>sf   <Plug>SQLU_Formatter<CR>
nmap <silent>scl  <Plug>SQLU_CreateColumnList<CR>
nmap <silent>scd  <Plug>SQLU_GetColumnDef<CR>
nmap <silent>scdt <Plug>SQLU_GetColumnDataType<CR>
nmap <silent>scp  <Plug>SQLU_CreateProcedure<CR>

" Automatic git commit wrapping
autocmd Filetype gitcommit setlocal spell textwidth=72

colorscheme neodark

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None term=None cterm=None gui=None
  autocmd InsertEnter * highlight CursorLine ctermbg=darkgrey ctermfg=None term=None cterm=None gui=None
aug END

aug AutoloadVimrc
  au!
  au BufWritePost ~/dotfiles/vimrc source ~/.vimrc
  au BufWritePost ~/.vimrc source ~/.vimrc
aug END
