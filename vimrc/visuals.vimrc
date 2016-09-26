"""""""""""""""""""
" VISUAL SETTINGS
"""""""""""""""""""
" Theme
syntax enable
"set background=dark
"let g:solarized_termcolors=256
colorscheme nova
set notermguicolors

" List Chars
set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:__              " a tab should display as "__", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
