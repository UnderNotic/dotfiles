#!/bin/sh

if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/undernotic/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Installing apps from Brewfile"
# brew bundle --file=~/.dotfiles/homebrew/Brewfile
brew bundle --file=~/.dotfiles/homebrew/MinimalBrewfile

echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade
yes | brew cu