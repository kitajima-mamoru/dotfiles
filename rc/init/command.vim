"oldfilesFilter
:command! V tabe ~/.vim/rc
:command! -nargs=* O call OldfilesFilter(<f-args>)
function! OldfilesFilter(...)
  tabe
  if a:0==0
    let cmd = 'browse filter! /\.git/ oldfiles'
  else
    let cmd = 'browse '
    let wordlist = a:000
    for word in wordlist
      let replaced = substitute(word, '\.', '\\\.', "g")
      let cmd = cmd.'filter /\c'.replaced.'/ '
    endfor
    let cmd = cmd.'oldfiles'
  end
  execute(cmd)
endfunction
