#!/usr/bin/env zsh
#
# Based on https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh
# (MIT licensed, as of 2016-05-05).

local __FILE_PREVIEW_COMMAND="bat --color \"always\" {}"

if type fd &>/dev/null; then
    local __FILE_FIND_PREFIX="fd --color=never --hidden --follow . "
    local __FILE_FIND_POSTFIX=" --type file --exclude .git --exclude node_modules"
else
    local __FILE_FIND_PREFIX="find "
    local __FILE_FIND_POSTFIX=" -type f"
fi

__fzfz_file() {
    if (($+__FZFZ_EXCLUDE_PATTERN)); then
        local EXCLUDER="egrep -v '$__FZFZ_EXCLUDE_PATTERN'"
    else
        local EXCLUDER="cat"
    fi

    # EXCLUDER is applied directly only to searches that need it (i.e. not
    # `z`). That improvements performance, and makes sure that the
    # FZFZ_SUBDIR_LIMIT is applied on the post-excluded list.

    if (($+FZFZ_EXTRA_DIRS)); then
        local EXTRA_DIRS="{ $__FILE_FIND_PREFIX $FZFZ_EXTRA_DIRS $__FILE_FIND_POSTFIX 2> /dev/null | $EXCLUDER }"
    else
        local EXTRA_DIRS="{ true }"
    fi

    local FZFZ_SUBDIR_LIMIT=${FZFZ_SUBDIR_LIMIT:=50}

    local REMOVE_FIRST="tail -n +2"
    local LIMIT_LENGTH="head -n $(($FZFZ_SUBDIR_LIMIT+1))"

    local SUBDIRS="{ $__FILE_FIND_PREFIX $PWD $__FILE_FIND_POSTFIX | $EXCLUDER | $LIMIT_LENGTH | $REMOVE_FIRST }"
    local RECENTLY_USED_DIRS="{ f | $__REVERSER | sed 's/^[[:digit:].]*[[:space:]]*//' }"

    local FZF_COMMAND="fzf --height 60% ${__FZFZ_EXTRA_OPTS} --tiebreak=end,index -m --preview='$__FILE_PREVIEW_COMMAND | head -\$LINES'"
    local COMMAND="{ $RECENTLY_USED_DIRS ; $EXTRA_DIRS; } | $__FZFZ_UNIQUIFIER | $FZF_COMMAND"

    eval "$COMMAND" | while read item; do
        printf '%q ' "$item"
    done
    echo
}

fzfz-file-widget() {
    LBUFFER="${LBUFFER}$(__fzfz_file)"
    local ret=$?
    zle redisplay
    typeset -f zle-line-init >/dev/null && zle zle-line-init
    return $ret
}

zle     -N   fzfz-file-widget
bindkey '^E' fzfz-file-widget
