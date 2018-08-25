# To use sudo with zsh
alias sudo='sudo env "PATH=$PATH"'
alias reload!='. ~/.zshrc'
alias cls='clear' # Good 'ol Clear Screen command

alias xd='xdg-open'

alias l='ls -lh --group-directories-first'
alias ll='ls -lah --group-directories-first'
alias lls='ls -FGlAhp' 

alias ..='cd ../'                           								# Go back 1 directory level
alias ...='cd ../../'                       								# Go back 2 directory levels
alias .3='cd ../../../'                     								# Go back 3 directory levels
alias .4='cd ../../../../'                  								# Go back 4 directory levels
alias .5='cd ../../../../../'               								# Go back 5 directory levels
alias .6='cd ../../../../../../'     

alias path='echo -e ${PATH//:/\\n}'