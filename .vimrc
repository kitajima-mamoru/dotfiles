if 0 | endif

if &compatible
  set nocompatible
endif

colorscheme 3dglasses
filetype plugin indent on

set t_Co=256
set hidden
set ignorecase
set number list
set showcmd
set laststatus=2
set showmatch
set matchtime=2
set autoindent
set shiftwidth=4
set tabstop=2
set expandtab
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set noswapfile

" {{{ ctags
"----------------------------------------------------
" 同じ関数名があった場合、どれに飛ぶか選択できるようにする
nnoremap <C-]> g<C-]>

"taglist
let Tlist_Show_One_File = 1               "現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1             "taglistのウィンドーが最後のウィンドーならばVimを閉じる
let Tlist_Use_Right_Window = 1            "taglistを右側で開く
" }}}

syntax on
nnoremap <Space>s. :<C-u>source $HOME/.vimrc<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <F8> :NERDTreeFind<CR>
nnoremap <C-n> gt
nnoremap <C-h> :<C-u>vertical diffsplit<Space>
nnoremap <C-p> :<C-u>echo expand("%:p")<Space>
nnoremap <C-k> :<C-u>call delete(expand('%'))<Space>
nnoremap - $
nnoremap <F10> :<C-u>tabe<CR>:browse oldfiles<CR>
nnoremap <F1> :<C-u>set nolist nonumber<CR>
nnoremap <F2> :<C-u>set list number<CR>
"new tabe tagjump
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <silent> <F4> o<ESC>0iERROR_LOG(var_export($,true));<ESC>7hi
nnoremap <silent> <F5> o<ESC>0iERROR_LOG(var_export(__FILE__,true));<ESC>


:command V tabe ~/.vimrc
"自動起動
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup myvimrc
  autocmd!
augroup END
autocmd myvimrc filetype nerdtree nnoremap b :<C-u>Bookmark
set clipboard=autoselect
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow','#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF','#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow','#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow','#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow','#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow','#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow','#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan','#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan','#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red','#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500','#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff','#151515')
   
execute pathogen#infect()
