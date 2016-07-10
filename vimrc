if &compatible
  set nocompatible
endif

" PLUGINS
" Dein Setup
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/dein.vim')
" Utilities for Other Plugins
call dein#add('vim-scripts/L9') " Required for FuzzyFinder
" Theme
call dein#add('dracula/vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" Niceties
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
" Linting
call dein#add('neomake/neomake',
    \{'on_cmd': 'Neomake'})
" END OF PLUGINS
call dein#end()
if dein#check_install() |
  call dein#install() |
endif

"""""""""""""""""""
" SETTINGS
"""""""""""""""""""
" Map Leader
let mapleader=" "
" Return to last opened file
nmap <Leader><Leader> <c-^>
" Ctrl + c becomes esc
ino <C-C> <Esc>
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

"""""""""""""""""""
" VIM / NEOVIM CONFIG
"""""""""""""""""""
if has('nvim')
    " NeoVim Config
    set mouse=r " Disable mouse support in neovim
else
    " Regular Vim Config
    set backspace=indent,eol,start " Fix Backspace to Work As You'd Expect
endif

"""""""""""""""""""
" CONFIGURE PLUGINS
"""""""""""""""""""
" vim-airline 
set laststatus=2
" vim-javascript
" TODO Conceal isn't working
let g:javascript_plugin_jsdoc=1
let g:javascript_conceal_arrow_function="⇒"
let g:javascript_conceal_return="⇚"
let g:javascript_conceal_function="ƒ"
" nerdtree
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>D :NERDTreeFind<CR>
" neomake
autocmd! BufWritePost * Neomake
" vim-sneak
nmap f <Plug>SneakForward
nmap F <Plug>SneakBackward
let g:sneak#streak = 1
" ack-vim
map <Leader>a :Ack!<space>
if executable('ag') " If Silver Searcher is available instead...
    let g:ackprg = 'ag --vimgrep --ignore "./q2-app/node_modules"'
endif
" fzf (Fuzzy Finding)
set rtp+=~/.fzf
map <Leader>ff :FZF<CR>
" File Buffer
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR>
" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
autocmd InsertEnter * Limelight
autocmd! InsertLeave * Limelight!
" indentline
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"

"""""""""""""""""""
" VISUAL SETTINGS
"""""""""""""""""""
" Theme
syntax enable
color dracula
" List Chars
set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:__              " a tab should display as "__", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
