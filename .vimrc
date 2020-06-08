set nocompatible
filetype off

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Yggdroot/indentLine'
Plug 'romainl/vim-cool'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
call plug#end()
filetype plugin indent on

" airline symbols
" set guifont="DroidSans\ Mono\ Nerd"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set virtualedit=all
set clipboard=unnamedplus
set t_vb=
syntax on
set hlsearch
set mouse=a
set smartcase
set ignorecase
set incsearch
set autoindent
set smartindent
" set shiftwidth=8
" set smarttab
" set softtabstop=8
" set tabstop=8
" set noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set ruler
set guicursor=i:ver25-iCursor
set number relativenumber
set nu rnu
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :bp!<CR>
nnoremap <C-k> :bn!<CR>
autocmd BufWinEnter * NERDTreeMirror
nmap <C-m> :NERDTreeFind<CR>
" let g:solarized_termcolors=16
syntax on
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'
set scrolloff=9
set virtualedit=onemore
augroup nerdtree_clear
	autocmd!
	autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | bd | endif
augroup end
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set noswapfile
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
let g:NERDTreeShowLineNumbers=1
autocmd BufEnter NERD_* setlocal rnu
colo gruvbox
" set lazyredraw
" set regexpengine=1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
