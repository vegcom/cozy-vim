# Installation Instructions

## Prerequisites

Before installing, ensure you have the following prerequisites installed:

1. vim

## Download



## Symlink 

```pwsh
New-Item -ItemType SymbolicLink -Path $HOME\.vimrc -Target $HOME\.vim\vimrc
```

```bash
ln -vsf $HOME/.vim/vimrc $HOME/.vimrc
```

