" 全角文字を使う場合以下の表記が必要
scriptencoding utf-8

" gf設定
set path+=,,src/,
" 見つからければ先頭のスラッシュを削除する
set includeexpr=substitute(v:fname,'^\\/','','')

augroup vimrc_gotofile
  autocmd!
  autocmd FileType javascript :setlocal suffixesadd=.ts,.js
  autocmd FileType ruby :setlocal suffixesadd=.rb
augroup END
