function t() {
    if [ -z "$1" ];
    then
        set -- "1"
    fi
    tree -L $1
}

alias cat='bat'

alias fp='fpp'