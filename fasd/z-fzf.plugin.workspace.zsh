fzfz-workspace-widget() {
 local WS=$(fd . $WORKSPACE --max-depth 2 --type d  | fzf)
 cd $WS
 zle accept-line
}


zle     -N   fzfz-workspace-widget
bindkey '^P' fzfz-workspace-widget
