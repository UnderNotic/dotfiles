#!/bin/sh

case "$*" in
    *.tar*) tar tf "$*";;
    *.zip) unzip -l "$*";;
    *.rar) 7z l "$*";;
    *.7z) 7z l "$*";;
    *.pdf) pdftotext "$*" -;;
    *) bat --color always --paging always "$*";;
esac
