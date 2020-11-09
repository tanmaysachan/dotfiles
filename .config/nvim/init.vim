" Tanmay's (n)vimrc
" nvim v0.4.3


" general
syntax on
" set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set virtualedit=all
set clipboard=unnamedplus " WSL clipboard breaks without this
set t_vb=
set hlsearch
set mouse=a " enable mouse support
set smartcase
set ignorecase
set incsearch
set noswapfile
set scrolloff=9
set virtualedit=onemore " scroll by one more to the right
set guicursor=i:ver25-iCursor " fixes cursor on GVIM
set ruler
set nu rnu

set nocompatible
filetype off


" VIM-Plug plugins set runtimepath^=~/.vim runtimepath+=~/.vim/after let &packpath = &runtimepath

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'romainl/vim-cool'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'flazz/vim-colorschemes'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jiangmiao/auto-pairs'
Plug 'tomlion/vim-solidity'
Plug 'lervag/vimtex'
call plug#end()
filetype plugin indent on

" markdown renderer
let vim_markdown_preview_use_xdg_open=1

" airline config
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'

" tex config
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {'continuous': 0}

" tabstop and indent
set autoindent
set smartindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" nerd tree
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :bp!<CR>
nnoremap <C-k> :bn!<CR>
autocmd BufWinEnter * NERDTreeMirror
nnoremap <C-m> :NERDTreeFind<CR>
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
let g:NERDTreeShowLineNumbers=1
autocmd BufEnter NERD_* setlocal rnu

augroup nerdtree_clear
	autocmd!
	autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | bd | endif
augroup end


" TMUX errors fix
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

colo gruvbox

" coc settings huehuehue

" coc-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

set cmdheight=2
set updatetime=500
set signcolumn=yes

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
