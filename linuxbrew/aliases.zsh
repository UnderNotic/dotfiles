alias ll='exa -la --group-directories-first'

function t() {
    if [ -z "$1" ];
    then
        set -- "1"
    fi
    tree -L $1
}