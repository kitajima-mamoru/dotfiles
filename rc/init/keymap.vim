nnoremap <Space>s. :<C-u>source $HOME/.vim/vimrc<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <F8> :NERDTreeFind<CR>
nnoremap <C-n> gt
nnoremap <C-b> gT
nnoremap <C-h> :<C-u>vertical diffsplit<Space>
nnoremap <C-p> :<C-u>echo expand("%:p")<Space>
nnoremap <C-k> :<C-u>call delete(expand('%'))<Space>
nnoremap - $
nnoremap <F10> :<C-u>tabe<CR>:browse filter /\./oldfiles<CR>
nnoremap <F1> :<C-u>set list! number!<CR>
nnoremap <F2> :set hlsearch!<CR>
"new tabe tagjump
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <silent> <F4> o<ESC>0iERROR_LOG(var_export($,true));<ESC>7hi
nnoremap <silent> <F5> o<ESC>0iERROR_LOG(var_export(__FILE__,true));<ESC>
nnoremap <F6> :Unite -auto-preview colorscheme<CR>
nnoremap <F12> :mks! ~/.vim/.session
