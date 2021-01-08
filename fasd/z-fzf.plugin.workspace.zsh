command -v tree >/dev/null 2>&1
if [ $? -eq 0 ]; then
    __DIR_PREVIEW_COMMAND='tree -L 2 -x --noreport --dirsfirst {}'
else
    __DIR_PREVIEW_COMMAND='ls -1 -R {}'
fi

fzfz-workspace-widget() {
 local WS=$(fd . $WORKSPACE --max-depth 2 --type d  | fzf  --height 40% ${__FZFZ_EXTRA_OPTS} --tiebreak=end,index -m --preview='$__DIR_PREVIEW_COMMAND | head -\$LINES')
 cd $WS
 zle accept-line
}

zle     -N   fzfz-workspace-widget
bindkey '^P' fzfz-workspace-widget
