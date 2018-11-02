" {{{ ctags
"----------------------------------------------------
" 同じ関数名があった場合、どれに飛ぶか選択できるようにする
nnoremap <C-]> g<C-]>

"taglist
let Tlist_Show_One_File = 1               "現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1             "taglistのウィンドーが最後のウィンドーならばVimを閉じる
let Tlist_Use_Right_Window = 1            "taglistを右側で開く
" }}}
