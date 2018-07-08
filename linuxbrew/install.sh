#!/usr/bin/env zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# add linuxbrew to path to use it without shell restart
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# grc install
echo ''
echo "Now installing exa..."
echo ''
brew install exa

# grc install
echo ''
echo "Now installing grc..."
echo ''
brew install grc