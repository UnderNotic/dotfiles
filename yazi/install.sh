#!/bin/bash

echo ''
echo 'Configuring yazi'
echo ''

ya pack -a yazi-rs/flavors:catppuccin-mocha

mkdir -p ~/.config/yazi/
cp ./yazi/theme.toml ~/.config/yazi/
cp ./yazi/yazi.toml ~/.config/yazi/