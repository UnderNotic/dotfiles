alias reload!='. ~/.zshrc'
alias cls='clear'

alias xd='open'

alias l='eza -a --group-directories-first --icons'
alias ll='eza -la --group-directories-first --icons'

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
