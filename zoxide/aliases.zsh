alias e='f -e code'

if [[ $OSTYPE == darwin* ]]; then
    __REVERSER='tail -r'
else
    __REVERSER='tac'
fi

_ZO_EXCLUDE_DIRS="**/node_modules/*"

__FZFZ_EXCLUDE_PATTERN=${__FILE_FZFZ_EXCLUDE_PATTERN:="\/.git"}
__FZFZ_EXTRA_OPTS=${__FILE_FZFZ_EXTRA_OPTS:=""}
__FZFZ_UNIQUIFIER="awk '!seen[\$0]++'"