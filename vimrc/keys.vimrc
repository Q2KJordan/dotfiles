"""""""""""""""""""
" Keys
"""""""""""""""""""
" Map Leader
let mapleader=" "

" Return to last opened file
nmap <Leader><Leader> <c-^>

" Ctrl + c becomes esc
ino <C-C> <Esc>

" Tagbar
nmap <Leader>t :TagbarOpenAutoClose<CR>

" File Buffer
"nnoremap <Tab> :bnext!<CR>
"nnoremap <S-Tab> :bprev!<CR>

" fzf (Fuzzy Finding)
map <Leader>ff :FZF<CR>

" Sneak
nmap f <Plug>SneakForward
nmap F <Plug>SneakBackward

" nerdtree
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>D :NERDTreeFind<CR>

" buffer
map <Leader>fb :CtrlPBuffer<CR>


" turn off arrows keys cus we aren't a bitch
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
