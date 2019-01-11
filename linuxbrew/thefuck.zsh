thefuck() {
    unset -f thefuck
    eval $(thefuck --alias fuck)
    thefuck "$@"
}
 