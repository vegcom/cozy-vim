" set unix style for all.
let g:plug_home = expand('~/.vim/pack')
call mkdir(g:plug_home, 'p')

" Normalize Unix-style ~/.vim on all platforms
let s:unixvim = expand('~/.vim')
if isdirectory(s:unixvim)
  execute 'set runtimepath=' . s:unixvim . ',' . $VIMRUNTIME
  execute 'set packpath=' . s:unixvim . ',' . expand('$VIM') . '/vimfiles,' . expand('$VIMRUNTIME') . '/pack'
endif

" compat hooks
if has('win32')
  " NT uses cmd
  set shell=cmd.exe
  set shellcmdflag=/c
  set shellpipe=|
  set shellredir=>
  " force pwsh for plugins
  let g:plug_powershell = 1
else
  " Unix uses bash
  set shell=bash
  set shellcmdflag=-c
endif

" disable built in explorer
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1


" vi: ft=vim