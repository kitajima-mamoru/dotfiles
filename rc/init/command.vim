"oldfilesFilter
:command! V tabe ~/.vim/rc
:command! -nargs=* O call OldfilesFilter(<f-args>)
function! OldfilesFilter(...)
  tabe
  if a:0==0
    let cmd = 'browse oldfiles'
  else
    let cmd = 'browse '
    let wordlist = a:000
    for word in wordlist
      let cmd = cmd.'filter /\c'.word.'/ '
    endfor
    let cmd = cmd.'oldfiles'
  end
  execute(cmd)
endfunction
