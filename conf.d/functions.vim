function! CuteCat()
  " produces a cute cat in the messages area
  let mode = mode()
  if mode ==# 'v' || mode ==# 'V' || mode ==# "\<C-V>"
    if &mod[ified]
      echo "=^._.^= ∫"
    endif
  endif
endfunction

 function HeadsUpDisplay()
  " this cool bar I don't know how else to call.
  ToggleNERDTreeAndTagbar
endfunction

function! MinpacInit()
  let minpac_dir = expand('~/.vim/pack/minpac/opt/minpac')

  if !isdirectory(minpac_dir)
    call mkdir(minpac_dir, 'p')
  endif

  if empty(glob(minpac_dir . '/autoload/minpac.vim'))
    echo "Installing minpac..."
    call system('git clone --recursive https://github.com/k-takata/minpac ' . shellescape(minpac_dir))

    " Re-source vimrc on next startup
    augroup MinpacBootstrap
      autocmd!
      autocmd VimEnter * source $MYVIMRC
    augroup END

    return
  endif

  " Load minpac AFTER it exists
  packadd minpac
  call minpac#init()

endfunction

function! RunOnce()
  " Things to be ran just on vim entry
  try
    hi CursorLineNR ctermbg=yellow ctermfg=black
    call mkdir($HOME . "/.vim/tmp/undo", "p", 0700)
    " TODO: make a function to do this on NT and Unix derived systems
    " call system('find ~/.vim/tmp/undo -type f -ctime +14 -exec rm -v {} +')

    " Plugin init
    call MinpacInit()
    "if empty(glob('~/.vim/pack/minpac/start/*'))
    "  autocmd VimEnter * call minpac#update()
    "endif
  endtry
endfunction

" vi: ft=vim
