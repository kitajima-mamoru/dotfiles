call SetCommon()

function! SetCommon()
  let targets=[ 
        \'autoindent',
        \'expandtab',
        \'hidden',
        \'hlsearch',
        \'ignorecase',
        \'list',
        \'nocursorcolumn',
        \'nocursorline',
        \'noswapfile',
        \'number',
        \'showcmd',
        \'showmatch',
      \]
  let cmd='set'
  for target in targets
    let cmd=cmd.' '.target
  endfor
  execute(cmd)
endfunction
