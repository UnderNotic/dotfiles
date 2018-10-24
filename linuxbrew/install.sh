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

# diff-so-fancy install
echo ''
echo "Now installing diff-so-fancy..."
echo ''
brew install diff-so-fancy

# thefuck install
echo ''
echo "Now installing thefuck..."
echo ''
brew install thefuck

# fpp install
echo ''
echo "Now installing fpp..."
echo ''
brew install fpp