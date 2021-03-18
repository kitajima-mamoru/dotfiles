" 全角文字を使う場合以下の表記が必要
scriptencoding utf-8

function! SetTabWidth(number, ...)
  let isGlobal=get(a:, 1, v:false)
  let cmd=isGlobal ? 'set' : 'setlocal'
  for target in ['tabstop', 'softtabstop', 'shiftwidth']
    let cmd=cmd.' '.target.'='.a:number
  endfor
  execute(cmd)
endfunction

set tags=./tags,tags,$HOME;
set t_Co=256
set laststatus=2 " ステータスラインの行数
set matchtime=2 "matchにかかる時間 デフォルトは5?
set pumheight=10 " 補完の高さ
" set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set clipboard=autoselect
set virtualedit=onemore
set viminfo='100,r~/NERD,
call SetTabWidth(2,v:true)

if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

augroup vimrc_setopt_filetype
  autocmd!
  autocmd BufRead,BufNewFile *.ts        set filetype=typescript
  autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
  autocmd BufRead,BufNewFile *.pu        set filetype=plantuml
  autocmd BufRead,BufNewFile *.puml      set filetype=plantuml
augroup END

augroup vimrc_setopt_set_tab_width
  autocmd!
  autocmd FileType php  call SetTabWidth(4)
  autocmd FileType twig call SetTabWidth(4)
  autocmd FileType xml  call SetTabWidth(4)
augroup END
