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

brew bundle --file=~/.private/Brewfile

echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Update all apps
brew cu
