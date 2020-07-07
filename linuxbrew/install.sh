#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

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

# bat install
echo ''
echo "Now installing fd..."
echo ''
brew install fd

# lazydocker install
echo ''
echo "Now installing lazydocker..."
echo ''
brew tap jesseduffield/lazydocker
brew install lazydocker

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

# install go
echo ''
echo 'Now installing go'
echo ''
brew install go

echo ''
echo 'Now installing lf - terminal navigator'
echo ''
brew install lf

mkdir -p ~/.config/lf
cp ./lf/lfrc ~/.config/lf