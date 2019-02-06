#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# add linuxbrew to path to use it without shell restart
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# mkcert install (local https certificates)
echo ''
echo 'Now installing mkcert...'
echo ''
brew install mkcert

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

# gotop install
echo ''
echo "Now installing gotop..."
echo ''
brew tap cjbassi/gotop 
brew install thefuck

# fpp install
echo ''
echo "Now installing fpp..."
echo ''
brew install fpp

# vegeta install
echo ''
echo "Now installing vegeta..."
echo ''
brew install vegeta

# git quick stats install
echo ''
echo "Now installing git-quick-stats..."
echo ''
brew install git-quick-stats