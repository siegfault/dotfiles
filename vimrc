" Section: Options
" ----------------

set nocompatible
set backspace=indent,eol,start
set history=200
set scrolloff=2
set sw=2 tabstop=2                          " Whitespace
set number relativenumber                   " Numbering
set hlsearch ignorecase incsearch smartcase " Search
set cindent expandtab                       " Indentation
set updatetime=250                          " vim-gitgutter
set wildmenu wildmode=full                  " Autocompletion
set foldlevel=99 foldmethod=indent          " Folding
set laststatus=2                            " Always display status bar
set list                                    " Allow changing character displays
set listchars=tab:>-                        " Display tabs as >-
set viminfo='100,n$HOME/.vim/files/info/viminfo

let mapleader = "\<Space>"

" Section: Plugins
" ----------------

runtime macros/matchit.vim

call plug#begin('~/.vim/plugged')
Plug 'KeitaNakamura/neodark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-localorie'
Plug 'andrewradev/splitjoin.vim'
Plug 'andrewradev/switch.vim'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'exu/pgsql.vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-user'
Plug 'luochen1990/rainbow'
Plug 'maralla/completor.vim'
Plug 'mcasper/vim-infer-debugger'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/Align'
Plug 'vim-scripts/SQLUtilities'
Plug 'w0rp/ale'
call plug#end()

" Section: Plugin Settings
" ------------------------

" Vimux
let test#strategy = "vimux"
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>t :TestNearest<CR>

" Surround
let g:surround_45 = "<% \r %>"
let g:surround_62 = "<%= \r %>"

" EasyAlign
" Motion/Text Object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Visual Mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Ale
let g:ale_open_list = 1
let g:ale_set_loclist = 1
let g:ale_lint_on_text_changed = 'never'

" Indent Guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

" Rainbow Parens
let g:rainbow_active = 1

" Infer Debugger
nmap <Leader>P :call AddDebugger("O")<cr>
nmap <Leader>p :call AddDebugger("o")<cr>
nmap <Leader>d :call RemoveAllDebuggers()<cr>

" Localorie
nnoremap <silent> <leader>lt :call localorie#translate()<CR>
nnoremap <silent> <leader>le :call localorie#expand_key()<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" FZF
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .gitignore -g ""'

map <c-f>f :Files<CR>
map <c-f>h :History<CR>
map <c-f>l :Lines<CR>
map <c-f>b :Buffer<CR>
map <c-f>m :Marks<CR>

nmap <c-f><tab> <plug>(fzf-maps-n)
xmap <c-f><tab> <plug>(fzf-maps-x)
omap <c-f><tab> <plug>(fzf-maps-o)
imap <c-f><tab> <plug>(fzf-maps-i)

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Sql Utilities
vmap <silent>sf   <Plug>SQLU_Formatter<CR>
nmap <silent>scl  <Plug>SQLU_CreateColumnList<CR>
nmap <silent>scd  <Plug>SQLU_GetColumnDef<CR>
nmap <silent>scdt <Plug>SQLU_GetColumnDataType<CR>
nmap <silent>scp  <Plug>SQLU_CreateProcedure<CR>

" Vim Fugitive
nmap <silent> <leader>b :Gblame<CR>

" Section: Mappings
" -----------------

nmap <silent> <leader>n :set nu!<CR>:set rnu!<CR> " Toggle Numbers
nmap <Leader>pg :set syntax=pgsql<cr>
map <Leader>c :%s///gn<CR> " Count search matches

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap & :&&<CR>
xnoremap & :&&<CR>

nnoremap <leader>f za " Folding

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

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>" " Completion

" Split lines
map K i<Enter><Esc>

" Section: Autocommands
" ---------------------

autocmd Filetype gitcommit setlocal spell textwidth=72 " Automatic git commit wrapping

autocmd VimResized * wincmd = " Automatic window resize

aug AutoloadVimrc
  au!
  au BufWritePost ~/code/dotfiles/vimrc source ~/.vimrc
  au BufWritePost ~/.vimrc source ~/.vimrc
aug END

set autoread

" Section: Visual
" ---------------

colorscheme neodark

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None term=None cterm=None gui=None
  autocmd InsertEnter * highlight CursorLine ctermbg=darkgrey ctermfg=None term=None cterm=None gui=None
aug END
