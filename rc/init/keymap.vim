nnoremap <Space>s. :<C-u>source $HOME/.vim/vimrc<CR>
nnoremap <Space>n. :%s/^/\=line('.') . ': '/<CR>
nnoremap <Space>j. :<C-u>setf=javascript<CR>:filetype indent on<CR> :%s/\n//g<CR> :%s/\s//g<CR> :%s/{/{\r/g<CR> :%s/}/\r}/g<CR> :%s/\[/\[\r/g<CR> :%s/\]/\r\]/g<CR> :%s/,/,\r/g<CR>:normal gg=G<CR>:noh<CR>
nnoremap <Space>c. :Unite -auto-preview colorscheme<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <C-h> :<C-u>vertical diffsplit %:h
nnoremap <F1> :<C-u>set list! number! wrap!<CR>
nnoremap <F2> :<C-u>set spell!<CR>
"new tabe tagjump
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <F11> :source ~/.vim/.session
nnoremap <F12> :mks! ~/.vim/.session
nnoremap g< :<C-u>cprevious<CR>
nnoremap g> :<C-u>cnext<CR>

augroup vimrc_keymap
  autocmd!
  autocmd FileType php  nnoremap <buffer> <silent> <F4> o<ESC>0iERROR_LOG(var_export($,true));<ESC>7hi
  autocmd FileType php  nnoremap <buffer> <silent> <F5> o<ESC>0iERROR_LOG(__FILE__.':'.__FUNCTION__.':'.__CLASS__.':L'.__LINE__);<ESC>

  autocmd FileType ruby nnoremap <buffer> <silent> <F4> oLogger.new('./forDebug').debug()<ESC>i
  autocmd FileType ruby nnoremap <buffer> <silent> <F5> op "#{__FILE__}#{__LINE__}"<ESC>
  autocmd FileType sh   nnoremap <buffer> <silent> <F4> oecho 
  autocmd FileType javascript nnoremap <buffer> <silent> <F4> oconsole.log();<ESC>hi
  autocmd FileType gitrebase nnoremap <buffer> <F4> :<C-u>2,$s/^pick/fixup/g<CR>
  autocmd FileType json nnoremap <buffer> <silent> <F4> :%!jq '.'<CR>
augroup END
