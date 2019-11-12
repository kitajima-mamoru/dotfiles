if 0 | endif

if &compatible
  set nocompatible
endif

colorscheme 3dglasses
filetype plugin indent on

set tags=./tags,tags,$HOME;
set t_Co=256
set hidden
set ignorecase
set number list
set showcmd
set laststatus=2
set showmatch
set matchtime=2
set autoindent
set shiftwidth=2
set tabstop=2 softtabstop=2
set expandtab
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set noswapfile
set clipboard=autoselect
set virtualedit=onemore
set viminfo='50,r~/NERD,
syntax on

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | source ~/.vim/.session | source $HOME/.vim/vimrc |endif
autocmd FileType php  setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType twig setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType xml setlocal tabstop=4 softtabstop=4 shiftwidth=4

execute pathogen#infect()

if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

set cursorline
hi clear CursorLine
hi CursorLineNr term=bold cterm=NONE ctermfg=10 ctermbg=15
set nocursorcolumn


"自動補完
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
