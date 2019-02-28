set nocompatible
filetype off    

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'rdnetto/YCM-Generator'
Plugin 'romainl/vim-cool'
Plugin 'tpope/vim-commentary'
Plugin 'machakann/vim-highlightedyank'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'flazz/vim-colorschemes'
call vundle#end()
filetype plugin indent on   

"" airline symbols
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
set t_vb=
syntax on 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
set autoindent	
set shiftwidth=8
set smartindent	
set smarttab	
set softtabstop=8
set tabstop=8
set noexpandtab
set ruler
set number relativenumber
set nu rnu
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :bp!<CR>
nnoremap <C-k> :bn!<CR>
autocmd BufWinEnter * NERDTreeMirror
nmap <C-m> :NERDTreeFind<CR>
let g:solarized_termcolors=16
syntax on
set background=dark
colo solarized
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
let g:airline_theme='badwolf'
set scrolloff=99 
set virtualedit=onemore
augroup nerdtree_clear
	autocmd!
	autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | bd | endif
augroup end
augroup END
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
inoremap jk <Esc>
set noswapfile
set mouse=
set ttymouse=
