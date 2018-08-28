#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# add linuxbrew to path to use it without shell restart
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# exa install
echo ''
echo "Now installing exa..."
echo ''
brew install exa

# bat install
echo ''
echo "Now installing bat..."
echo ''
brew install bat

# peco install
echo ''
echo "Now installing peco..."
echo ''
brew install peco

# diff-so-fancy install
echo ''
echo "Now installing diff-so-fancy..."
echo ''
brew install diff-so-fancy