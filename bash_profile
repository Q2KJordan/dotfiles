if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
alias ag='ag --path-to-agignore ~/.agignore'
export FZF_DEFAULT_COMMAND='ag -g ""'

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=/usr/local/pcre/bin:$PATH

export PROMPT_COMMAND=__prompt_command  # Func to gen PS1 after CMDs

function __prompt_command() {
    local EXIT="$?"             # This needs to be first

    local Whi='\[\e[0m\]'
    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local Yel='\[\e[1;33m\]'
    local Blu='\[\e[1;34m\]'

    PS1="${Whi}[ ${Blu}\u${Whi}@${Yel}\h${Whi} ] \W\n"

    if [ $EXIT != 0 ]; then
        PS1+="${Red}⟩${Whi}"      # Add red if exit code non 0
    else
        PS1+="${Gre}⟩${Whi}"
    fi
}
