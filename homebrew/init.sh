#!/bin/sh

if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing apps from Brewfile"
brew bundle --file=~/homebrew/Brewfile

echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade
yes | brew cu