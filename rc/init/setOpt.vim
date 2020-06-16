function! SetTabWidth(number)
  let cmd='setlocal'
  for target in ['tabstop', 'softtabstop', 'shiftwidth']
    let cmd=cmd.' '.target.'='.a:number
  endfor
  execute(cmd)
endfunction

set tags=./tags,tags,$HOME;
set t_Co=256
set laststatus=2 " ステータスラインの行数
"set matchtime=2
set pumheight=10 " 補完の高さ
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set clipboard=autoselect
set virtualedit=onemore
set viminfo='100,r~/NERD,

if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

call SetTabWidth(2)
autocmd BufRead,BufNewFile *.ts        set filetype=typescript
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

autocmd FileType php  call SetTabWidth(4)
autocmd FileType twig call SetTabWidth(4)
autocmd FileType xml  call SetTabWidth(4)
