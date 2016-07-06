set nocompatible
set backspace=indent,eol,start
let iCanHazNeoBundle=1
let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
    let iCanHazNeoBundle=0
endif
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand($HOME.'/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'dracula/vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'posva/vim-vue'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'yggdroot/indentline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'toranb/tmux-navigator'
NeoBundle 'toranb/nerd-ack'
NeoBundle 'toranb/vim-ack'
NeoBundle 'raimondi/delimitmate'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'wookiehangover/jshint.vim'
NeoBundle 'scrooloose/syntastic'
call neobundle#end()

if iCanHazNeoBundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :NeoBundleInstall
endif
NeoBundleCheck

filetype plugin on
filetype indent on
set nowrap
set t_Co=256
set encoding=utf8
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set undolevels=1000
set conceallevel=0
set hidden
set nobackup
set noswapfile
set noerrorbells
set nowrap
set clipboard=unnamed
set autoread
set autowrite

" vim-airline
set laststatus=2

" Line Indent Helper
let g:indentLine_enabled = 1
let g:indentLine_char = '⟩'

" List chars
set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:__              " a tab should display as "__", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
" Theme
syntax enable
color dracula
set background=dark
hi Normal ctermbg=none

" JS Context Coloring
let g:js_context_colors_enabled = 1

" Sneak
nmap f <Plug>SneakForward
nmap F <Plug>SneakBackward
let g:sneak#streak = 1

let g:jedi#auto_vim_configuration = 0
let g:jedi#goto_command = "<leader>j"
let NERDTreeIgnore = ['\.pyc$']
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = '\v[\/](build)|dist|tmp|bower_components|node_modules|(\.(swp|git|bak|pyc|swp|DS_Store))$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_height = 18
let mapleader=" "

function! s:setup_paste() abort
    let s:paste = &paste
    set paste
endfunction

nnoremap <C-S-n> :CtrlP<CR>
nnoremap <Leader>ff :CtrlP<CR>
map <Leader>fb :CtrlPBuffer<CR>
map <Leader>d :NERDTreeToggle<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader><Leader> <c-^>
nnoremap <Esc><Esc> :nohlsearch<CR>
map <Leader>a :Ack!<space>
"map <Leader>a :Ag!<space>
nnoremap <silent> yp :call <SID>setup_paste()<CR>
nnoremap <Leader>ed <C-w><C-v><C-l>:e $MYVIMRC<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let g:SuperTabDefaultCompletionType = "<c-n>"
