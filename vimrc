set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'plasticboy/vim-markdown'
"    zr: reduces fold level throughout the buffer
"    zR: opens all folds
"    zm: increases fold level throughout the buffer
"    zM: folds everything all the way
"    za: open a fold your cursor is on
"    zA: open a fold your cursor is on recursively
"    zc: close a fold your cursor is on
"    zC: close a fold your cursor is on recursively
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'hashivim/vim-terraform'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'Rigellute/shades-of-purple.vim'
Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on
if has("syntax")
  syntax enable
endif

if (has("termguicolors"))
  set termguicolors
endif

colorscheme gruvbox

set encoding=utf-8
set t_Co=256
set background=dark
set history=5000
set undolevels=5000
set ffs=unix,dos
set nobackup
set nowritebackup
set noswapfile
set number
set tabstop=4
set softtabstop=2
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set hlsearch
set scrolloff=5
set splitbelow
set splitright
set autoread
set backspace=2
set wildmenu
set showmatch
set spell

set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

let g:go_version_warning=0
let NERDTreeShowHidden=1

let g:vim_markdown_folding_disabled = 1
