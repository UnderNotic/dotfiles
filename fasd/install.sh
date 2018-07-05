#!/usr/bin/env zsh

sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install fasd

echo 'plugins=(fasd)' >> ~/.zshrc

https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/fasd/fasd.plugin.zsh