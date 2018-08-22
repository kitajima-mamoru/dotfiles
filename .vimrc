if 0 | endif

if &compatible
  set nocompatible
endif

colorscheme 3dglasses
  filetype plugin indent on

set t_Co=256  
set hidden
set ignorecase
set number
set list
set showcmd
set laststatus=2
set showmatch
set matchtime=2
set autoindent
set tabstop=2
set expandtab
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set noswapfile

syntax on
nnoremap <Space>s. :<C-u>source $HOME/.vimrc<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <F8> :NERDTreeFind<CR>
nnoremap <C-n> gt
nnoremap <C-p> gT
nnoremap <C-h> :<C-u>vertical diffsplit<Space>
nnoremap <C-p> :<C-u>echo expand("%:p")<Space>
nnoremap <C-k> :<C-u>call delete(expand('%'))<Space>
nnoremap - $
let g:NERDTreeShowBookmarks=1
let NERDTreeShowHidden = 1
autocmd vimenter * NERDTree

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
   
augroup myvimrc
  autocmd!
augroup END
autocmd myvimrc filetype nerdtree nnoremap b :<C-u>Bookmark
execute pathogen#infect()
