#!/bin/bash

echo ''
echo 'Setting up dock'
echo ''
sh macos/dock.sh

echo ''
echo 'Setting macos defaults'
echo ''
sh macos/set-defaults.sh
