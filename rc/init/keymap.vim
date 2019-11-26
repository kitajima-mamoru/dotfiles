nnoremap <Space>s. :<C-u>source $HOME/.vim/vimrc<CR>
nnoremap <Space>i. :<C-u>%s/\n\s*//g<CR>:%s/></>\r</g<CR>:filetype indent on<CR>:setf xml<CR>:normal gg=G<CR>:setf twig<CR>:noh<CR>
nnoremap <Space>j. :<C-u>setf=javascript<CR>:filetype indent on<CR> :%s/\n//g<CR> :%s/\s//g<CR> :%s/{/{\r/g<CR> :%s/}/\r}/g<CR> :%s/\[/\[\r/g<CR> :%s/\]/\r\]/g<CR> :%s/,/,\r/g<CR>:normal gg=G<CR>:noh<CR>
nnoremap <Space>c. :Unite -auto-preview colorscheme<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <C-n> gt
nnoremap <C-b> gT
nnoremap <C-h> :<C-u>vertical diffsplit<Space>
nnoremap - $l
nnoremap <F1> :<C-u>set list! number!<CR>
nnoremap <F2> :set hlsearch!<CR>
"new tabe tagjump
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <F11> :source ~/.vim/.session
nnoremap <F12> :mks! ~/.vim/.session
nnoremap g< :<C-u>cprevious<CR>   "前へ
nnoremap g> :<C-u>cnext<CR>       " 次へ

autocmd FileType php  nnoremap <buffer> <silent> <F4> o<ESC>0iERROR_LOG(var_export($,true));<ESC>7hi
autocmd FileType php  nnoremap <buffer> <silent> <F5> o<ESC>0iERROR_LOG(__FILE__.":".__FUNCTION__.":".__CLASS__.":L".__LINE__);<ESC>
autocmd FileType php  nnoremap <buffer> <silent> <F7> o<ESC>0iERROR_LOG(var_export(get_class_methods(get_class($)),true));<ESC>9hi
autocmd FileType php  nnoremap <buffer> <silent> <F8> o<ESC>0iERROR_LOG(get_class() === get_class($this) ? "ParentClass" : "ChildClass");<ESC>

autocmd FileType ruby nnoremap <buffer> <silent> <F4> oLogger.new('./forDebug').debug()<ESC>i
autocmd FileType sh   nnoremap <buffer> <silent> <F4> oecho 
autocmd FileType javascript nnoremap <buffer> <silent> <F4> oconsole.log()<ESC>i
autocmd FileType gitrebase nnoremap <buffer>  <F4> :<C-u>2,$s/^pick/fixup/g<CR>
