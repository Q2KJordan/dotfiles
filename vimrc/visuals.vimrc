"""""""""""""""""""
" VISUAL SETTINGS
"""""""""""""""""""
" Theme
syntax enable
set background=dark
let g:solarized_termcolors=256
"colorscheme nova
"color nova
hi clear
hi String ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff guibg=NONE gui=NONE
"hi SpellBad cterm=underline ctermfg=red

set notermguicolors
set t_Co=256
set t_ut=

" List Chars
set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:__              " a tab should display as "__", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
