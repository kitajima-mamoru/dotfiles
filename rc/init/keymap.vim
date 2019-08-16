nnoremap <Space>s. :<C-u>source $HOME/.vim/vimrc<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <C-n> gt
nnoremap <C-b> gT
nnoremap <C-h> :<C-u>vertical diffsplit<Space>
nnoremap - $
nnoremap <F10> :<C-u>tabe<CR>:browse filter /\./oldfiles<CR>
nnoremap <F1> :<C-u>set list! number!<CR>
nnoremap <F2> :set hlsearch!<CR>:set cursorcolumn!<CR>
"new tabe tagjump
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <silent> <F4> o<ESC>0iERROR_LOG(var_export($,true));<ESC>7hi
nnoremap <silent> <F5> o<ESC>0iERROR_LOG(__FILE__.":".__FUNCTION__.":L".__LINE__);<ESC>
nnoremap <silent> <F7> o<ESC>0iERROR_LOG(var_export(get_class_methods(get_class($)),true));<ESC>9hi
nnoremap <F6> :Unite -auto-preview colorscheme<CR>
nnoremap <F11> :source ~/.vim/.session
nnoremap <F12> :mks! ~/.vim/.session
nnoremap <C-i> :%s/\n\s*//g<CR>:%s/></>\r</g<CR>:filetype indent on<CR>:setf xml<CR>:normal gg=G<CR>:setf twig<CR>
nnoremap < :cprevious<CR>   "前へ
nnoremap > :cnext<CR>       " 次へ
nnoremap g< :<C-u>cfirst<CR> " 最初へ
nnoremap g> :<C-u>clast<CR>  " 最後へ
