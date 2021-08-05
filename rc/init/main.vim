" 全角文字を使う場合以下の表記が必要
scriptencoding utf-8

colorscheme 3dglasses
filetype plugin indent on

syntax on
execute pathogen#infect()

"自動補完
set completeopt=menuone
for k in split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_','\zs')
  exec 'imap ' . k . ' ' . k . '<C-N><C-P>'
endfor
hi clear CursorLine

" インサートモードに入った時に大文字小文字を区別する
augroup vimrc_change_cursorline_color
  autocmd!
  autocmd InsertEnter * set noignorecase
  autocmd InsertLeave * set ignorecase
augroup END

