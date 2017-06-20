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

" deoplete (autocomplete)
"let g:deoplete#enable_at_startup = 1
"let g:python3_host_prog = '/usr/local/bin/python3.5'
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" neomake
autocmd! BufWritePost * Neomake

" vim-sneak
let g:sneak#streak = 1

" ack-vim
map <Leader>a :Ack!<space>
if executable('ag') " If Silver Searcher is available instead...
  let g:ackprg = 'ag --vimgrep --ignore "./q2-app/node_modules"'
endif

" fzf (Fuzzy Finding)
set rtp+=~/.fzf

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
"autocmd InsertEnter * Limelight
"autocmd! InsertLeave * Limelight!

" indentline
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"

let g:airline_powerline_fonts=1
set formatoptions-=or

" spellcheck
autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown,*.txt set spell spelllang=en_us
