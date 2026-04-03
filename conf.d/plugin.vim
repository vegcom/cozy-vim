" Initialize minpac
call minpac#init()

" Core plugins
call minpac#add('vim-airline/vim-airline')
call minpac#add('dracula/vim', {'name': 'dracula'})
call minpac#add('kien/ctrlp.vim')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('tpope/vim-sleuth')
call minpac#add('nathanaelkane/vim-indent-guides')
call minpac#add('junegunn/vim-easy-align')

" Plugins with build steps
call minpac#add('Shougo/vimproc.vim', {'do': 'make'})
call minpac#add('ycm-core/YouCompleteMe', {'do': './install.py'})
call minpac#add('vim-syntastic/syntastic')
call minpac#add('heavenshell/vim-pydocstring', {'do': 'make install'})

" Navigation / UI
call minpac#add('tpope/vim-surround')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('scrooloose/nerdtree')
call minpac#add('majutsushi/tagbar')
call minpac#add('pseewald/nerdtree-tagbar-combined')
call minpac#add('universal-ctags/ctags')

" Misc
call minpac#add('aperezdc/vim-template')
call minpac#add('hattya/license.vim')
call minpac#add('thinca/vim-themis')
call minpac#add('mileszs/ack.vim')
call minpac#add('fidian/hexmode')
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'})

" Fun / extras
call minpac#add('mhinz/vim-startify')
call minpac#add('skanehira/docker-compose.vim')
call minpac#add('mattn/emmet-vim')

" Auto-install plugins on first run
if empty(glob('~/.vim/pack/minpac/start/*'))
  call minpac#update()
endif

" vi: ft=vim
