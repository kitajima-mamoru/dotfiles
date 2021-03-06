" 全角文字を使う場合以下の表記が必要
scriptencoding utf-8

" oldfilesFilter
:command! V tabe ~/.vim/rc
:command! -nargs=* O call OldfilesFilter(<f-args>)
function! OldfilesFilter(...)
  if a:0==0
    let cmd = 'filter! /\.git'
  else
    let cmd = 'filter /\c'
    let wordlist = a:000
    for word in wordlist
      ".を\.にするために\.を\\\.に変える
      "/を\/にするために\/を\\/に変える
      let replaced = substitute(substitute(word, '\.', '\\\.', 'g'), '\/', '\\/', 'g')
      let cmd = cmd.replaced.'.*'
    endfor
  end
  let cmd = cmd.'/ browse oldfiles'
  tabe
  execute(cmd)
endfunction
