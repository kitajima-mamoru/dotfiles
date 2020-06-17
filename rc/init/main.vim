" 全角文字を使う場合以下の表記が必要
scriptencoding utf-8

"if 0 | endif

"if &compatible
"  set nocompatible
"endif

colorscheme 3dglasses
filetype plugin indent on

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | source ~/.vim/.session | source $HOME/.vim/vimrc |endif

syntax on
execute pathogen#infect()

"自動補完
set completeopt=menuone
for k in split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_','\zs')
  exec 'imap ' . k . ' ' . k . '<C-N><C-P>'
endfor
hi clear CursorLine

" インサートモードに入った時にカーソル行(列)の色を変更する
augroup vimrc_change_cursorline_color
  autocmd!
  " インサートモードに入った時にカーソル行の色をブルーグリーンにする
  autocmd InsertEnter * set noignorecase " | highlight CursorLine ctermbg=24
  " インサートモードを抜けた時にカーソル行の色を黒に近いダークグレーにする
  autocmd InsertLeave * set ignorecase " | highlight CursorLine ctermbg=235 
augroup END

