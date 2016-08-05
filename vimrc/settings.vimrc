"""""""""""""""""""
" SETTINGS
"""""""""""""""""""
" Copy Paste to Global Clipboard
set clipboard=unnamed
" Swap Files
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/
" Misc Settings
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set undolevels=1000
set conceallevel=0
set number " Gutter with Numbers
set encoding=utf8
set nowrap
set noerrorbells
set hidden

"""""""""""""""""""
" VIM / NEOVIM CONFIG
"""""""""""""""""""
if has('nvim')
  " NeoVim Config
  set mouse=r " Disable mouse support in neovim
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
else
  " Regular Vim Config
  set backspace=indent,eol,start " Fix Backspace to Work As You'd Expect
endif
