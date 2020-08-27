" php用パス書き換え関数
" Biz <=> Controller
"
":command! B call ReplaceBizCont()
"function! ReplaceBizCont()
"   let inputpath = expand('%:p')
"   "php only
"   if match(inputpath, '\.php$') < 0
"     echo 'php only'
"     return
"   end
"   let replaced = inputpath
"   if match(inputpath, 'Controller/') > 0
"     " Controller mode
"     let replaced = substitute(replaced, 'Controller.php', '', '')
"     let replaced = substitute(replaced, 'Controller', 'Biz', '')
"   else
"     if match(inputpath, 'Biz') > 0
"       " biz mode
"       let replaced = substitute(replaced, 'Biz', 'Controller', '')
"       let replaced = substitute(replaced, '/[^/]*$', 'Controller.php', '')
"     end
"   end
"   let cmd = 'vsp '. replaced
"   "echo cmd
"   execute(cmd)
"endfunction
