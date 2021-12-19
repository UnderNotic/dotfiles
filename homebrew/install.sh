#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.


# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade
© 2021 GitHub, Inc.
Terms


brew install --cask alt-tab

brew install --cask rectangle

brew install --cask microsoft-edge

brew install --cask monitorcontrol

brew install --cask whatsapp 

brew install --cask adobe-acrobat-reader


brew install docker
brew install docker-compose

brew install --cask microsoft-remote-desktop

brew install --cask monitorcontrol // probably not needed


brew install --cask dropbox

brew install onedrive

brew install --cask nordvpn

rectangle

raycast

alttab

clean my mac x


ferdi


redquits???


Amphetamine 


iterm2

obs

hyperkey