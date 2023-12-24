#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Microsoft Edge.app"
dockutil --no-restart --add "/Applications/Microsoft OneNote.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
# dockutil --no-restart --add "/Applications/rider"
# dockutil --no-restart --add "/Applications/webstorm"
# dockutil --no-restart --add "/Applications/datagrip"
dockutil --no-restart --add "/Applications/Spotify.app"

killall Dock
