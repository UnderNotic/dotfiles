alias e='f -e code'
alias fd=fdfind

if [[ $OSTYPE == darwin* ]]; then
    __REVERSER='tail -r'
else
    __REVERSER='tac'
fi

__FZFZ_EXCLUDE_PATTERN=${__FILE_FZFZ_EXCLUDE_PATTERN:="\/.git"}
__FZFZ_EXTRA_OPTS=${__FILE_FZFZ_EXTRA_OPTS:=""}
__FZFZ_UNIQUIFIER="awk '!seen[\$0]++'"