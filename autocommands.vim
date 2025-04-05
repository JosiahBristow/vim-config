" Add Shebang to new .sh files
autocmd BufNewFile *.sh,*py exec ":call SetTitle()"
func SetTitle()
    if expand("%:e") == 'sh'
      call setline(1,"#!/bin/bash")
      call setline(2,"")
    elif expand("%:e") == 'py'
      call setline(1,"#!/usr/bin/python3")
      call setline(2,"--")
    endif
    exec ":2"
endfunc

" Set different tabsize according to filetype
autocmd BufEnter * call SetTabsize()
function! SetTabsize() abort
  if expand("%:e") == 'sh' || expand("%:e") == 'lua' || expand("%:e") == 'yaml'
        \  || expand("%:e") == 'css' || expand("%:e") == 'html' 
        \  || expand("%:e") == 'toml' || expand("%:e") == 'js'
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
  elseif expand("%:e") == 'c' || expand("%:e") == 'cpp' || expand("%:e") == 'h'
    set tabstop=8
    set shiftwidth=8
    set softtabstop=8
  else
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
  endif
endfunction
