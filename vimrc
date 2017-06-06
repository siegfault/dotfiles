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
Plug 'ngmy/vim-rubocop'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <silent> <Leader>sy :<C-u>call ToggleSyntastic()<CR>

" RuboCop
let g:vimrubocop_keymap = 0
nmap <Leader>ru :<C-u>call ToggleRuboCop()<CR>

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
map <c-p> :FZF -m<CR>
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .gitignore -g ""'

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

aug AutoloadVimrc
  au!
  au BufWritePost ~/dotfiles/vimrc source ~/.vimrc
  au BufWritePost ~/.vimrc source ~/.vimrc
aug END

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

" Section: Functions
" ------------------

function! ToggleRuboCop()
  for i in range(1, winnr('$'))
    let bnum = winbufnr(i)
    if getbufvar(bnum, '&buftype') == 'quickfix'
      cclose
      return
    endif
  endfor

  RuboCop
endfunction

function! ToggleSyntastic()
  if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
    " No location/quickfix list shown, open syntastic error location panel
    Errors
  else
    lclose
  endif
endfunction
