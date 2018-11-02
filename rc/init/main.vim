if 0 | endif

if &compatible
  set nocompatible
endif

colorscheme 3dglasses
filetype plugin indent on

set t_Co=256
set hidden
set ignorecase
set number list
set showcmd
set laststatus=2
set showmatch
set matchtime=2
set autoindent
set shiftwidth=4
set tabstop=2
set expandtab
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set noswapfile
set clipboard=autoselect
syntax on

:command V tabe ~/.vim/rc
"自動起動
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

execute pathogen#infect()
