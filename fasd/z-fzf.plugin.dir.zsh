#!/usr/bin/env zsh
#
# Based on https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh
# (MIT licensed, as of 2016-05-05).

command -v tree >/dev/null 2>&1
if [ $? -eq 0 ]; then
    __DIR_PREVIEW_COMMAND='tree -L 2 -x --noreport --dirsfirst {}'
else
    __DIR_PREVIEW_COMMAND='ls -1 -R {}'
fi

if type fd &>/dev/null; then
    __DIR_FIND_PREFIX="fd --color=never --hidden . "
    __DIR_FIND_POSTFIX=" --type directory --exclude .git --exclude node_modules"
else
    __DIR_FIND_PREFIX="find "
    __DIR_FIND_POSTFIX=" -type d"
fi

__fzfz_dir() {
    if (($+__FZFZ_EXCLUDE_PATTERN)); then
        local EXCLUDER="egrep -v '$__FZFZ_EXCLUDE_PATTERN'"
    else
        local EXCLUDER="cat"
    fi

    # EXCLUDER is applied directly only to searches that need it (i.e. not
    # `z`). That improvements performance, and makes sure that the
    # FZFZ_SUBDIR_LIMIT is applied on the post-excluded list.

    if (($+FZFZ_EXTRA_DIRS)); then
        local EXTRA_DIRS="{ $__DIR_FIND_PREFIX $FZFZ_EXTRA_DIRS $__DIR_FIND_POSTFIX 2> /dev/null | $EXCLUDER }"
    else
        local EXTRA_DIRS="{ true }"
    fi

    local FZFZ_SUBDIR_LIMIT=${FZFZ_SUBDIR_LIMIT:=50}

    local REMOVE_FIRST="tail -n +2"
    local LIMIT_LENGTH="head -n $(($FZFZ_SUBDIR_LIMIT+1))"

    local SUBDIRS="{ $__DIR_FIND_PREFIX $PWD $__DIR_FIND_POSTFIX | $EXCLUDER | $LIMIT_LENGTH | $REMOVE_FIRST }"
    local RECENTLY_USED_DIRS="{ z | $__REVERSER | sed 's/^[[:digit:].]*[[:space:]]*//' }"

    local FZF_COMMAND="fzf --height 40% ${__FZFZ_EXTRA_OPTS} --tiebreak=end,index -m --preview='$__DIR_PREVIEW_COMMAND | head -\$LINES'"

    local COMMAND="{ $RECENTLY_USED_DIRS ; $EXTRA_DIRS; } | $__FZFZ_UNIQUIFIER | $FZF_COMMAND"

    eval "$COMMAND" | while read item; do
        printf '%q ' "$item"
    done
    echo
}

fzfz-dir-widget() {
    LBUFFER="${LBUFFER}$(__fzfz_dir)"
    local ret=$?
    zle redisplay
    typeset -f zle-line-init >/dev/null && zle zle-line-init
    return $ret
}

zle     -N   fzfz-dir-widget
bindkey '^G' fzfz-dir-widget
