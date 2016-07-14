"""""""""""""""""""
" INSTALL PLUGINS
"""""""""""""""""""
" Dein Setup
set runtimepath^=~/.dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/dein.vim')

" Utilities for Other Plugins
call dein#add('vim-scripts/L9') " Required for FuzzyFinder
call dein#add('Shougo/deoplete.nvim') " Autocomplete

" Theme
call dein#add('dracula/vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" Visual Niceties
call dein#add('yggdroot/indentline')
call dein#add('airblade/vim-gitgutter')
call dein#add('junegunn/limelight.vim',
    \{'on_cmd': 'Limelight'})

" Tmux Corrections
call dein#add('toranb/tmux-navigator')

" Filetypes
call dein#add('pangloss/vim-javascript',
    \{'on_ft': ['js']})
call dein#add('mustache/vim-mustache-handlebars',
    \{'on_ft': ['hbs', 'handlebars']})
call dein#add('posva/vim-vue',
    \{'on_ft': ['vue']})
call dein#add('plasticboy/vim-markdown',
    \{'on_ft': ['md', 'markdown']})

" Altering Code
call dein#add('tpope/vim-surround')

" Finding Files
call dein#add('scrooloose/nerdtree',
    \{'on_cmd': 'NERDTreeToggle'})
call dein#add('junegunn/fzf')
call dein#add('mileszs/ack.vim',
    \{'on_cmd': 'Ack!'})
call dein#add('ap/vim-buftabline')

" Navigating In-File
call dein#add('justinmk/vim-sneak')
call dein#add('scrooloose/nerdcommenter')
call dein#add('vim-scripts/camelcasemotion')
call dein#add('majutsushi/tagbar',
    \{'on_cmd': 'TagbarToggle'})

" Linting
call dein#add('neomake/neomake',
    \{'on_cmd': 'Neomake'})

" END OF PLUGINS
call dein#end()
if dein#check_install() |
  call dein#install() |
endif
