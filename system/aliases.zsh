alias reload!='. ~/.zshrc'
alias cls='clear'

alias xd='open'

alias l='lsd -A --group-dirs first'
alias ll='lsd -lA --group-dirs first'
alias lsa='ls -FGlAhp --group-directories-first' 

alias ..='cd ../'                           								# Go back 1 directory level
alias ...='cd ../../'                       								# Go back 2 directory levels
alias .3='cd ../../../'                     								# Go back 3 directory levels
alias .4='cd ../../../../'                  								# Go back 4 directory levels
alias .5='cd ../../../../../'               								# Go back 5 directory levels
alias .6='cd ../../../../../../'     

alias path='echo -e ${PATH//:/\\n}'

alias cat='bat'

alias fp='fpp'

function t() {
    if [ -z "$1" ];
    then
        set -- "1"
    fi
    tree -L $1
}
