# Shortcuts

## MacOS
* `CMD + M` &nbsp; minimize 
* `CTRL + OPTION + ENTER` &nbsp; maximize
* `CTRL + OPTION + arrows` &nbsp; move window
* `CTRL + CMD + f` &nbsp; fullscreen
* `CMD + Q` &nbsp; quit
* `CMD + W` &nbsp; close tab
* `CMD + §` &nbsp; clipboard
* `CMD + down arrow` &nbsp; open file
* `CMD + backspace`  &nbsp; delete file
* `CTRL + arrows` &nbsp; move between spaces

## Kitty shortcuts
* `CMD + ENTER` &nbsp; new_window
* `CMD + 1/2` &nbsp; open window 1 or 2
* `CMD + T` &nbsp; new tab
* `CMD + W` &nbsp; close tab
* `CTRL + TAB` &nbsp; next tab
* `CTRL + SHIFT + UP/DOWN` &nbsp; go up/down line
* `CMD + UP/DOWN` &nbsp; go up/down line
* `FN + CTRL + SHIFT + UP/DOWN` &nbsp; go up/down page
* `FN + CMD + UP/DOWN` &nbsp; go up/down page
* `CTRL + D` &nbsp; exit terminal
* `CTRL + L` &nbsp; clean terminal
* `CTRL + W` &nbsp; clean typed backwards
* `CTRL + K` &nbsp; clean typed forward
* `CTRL + U` &nbsp; clean typed

## Navigating
* `OPTION + C` &nbsp; cd into dir, which is under current dir (show all dirs)
* `CTRL + T` &nbsp; paste file name into cli, which is under current dir (show all files)
* `CTRL + E within fzf list`&nbsp; open file/dir in code from fzf list in code
* `CTRL + O  within fzf list` &nbsp; open file/dir with open from fzf list in code
* `CTRL + R` &nbsp; use command from past
* `z` &nbsp; navigate using z
* `zi` &nbsp; navigate using z with fzf


## MC
* https://klimer.eu/2015/05/01/use-midnight-commander-like-a-pro/
* `ALT + S` &nbsp; find by string in current dir
* `CTRL + T` &nbsp; select item
* \* &nbsp; reverse selection. If nothing was selected, all files will get selected.
* `Alt + ,` &nbsp; switch mc’s layout from left-right to top-bottom
* `Alt + i` &nbsp; synchronize the active panel with the other panel. That is, show the current directory in the other panel.
* `Alt + t` &nbsp; switch the panel’s listing mode in a loop: default, brief, long, user-defined. “long” is especially useful, because it maximises one panel so that it takes full width of the window and longer filenames fit on screen.
* `Alt + ?` &nbsp; shows the full Find dialog.
* `Ctrl + x s` &nbsp; (that is press Ctrl + x, let it go and then press s) - create a symbolic link (change s to l for a hardlink). I find it very useful and intuitive - the link will, of course, be created in the other panel. You can change it’s destination and name, like with any other file operation.
* `Alt + Shift + h` &nbsp; show the directory history. Might be easier to navigate than going back one entry at a time.

## GIT
* `lazygit` &nbsp; git cli gui
* `git-quick-stats` &nbsp; git repo stats
* `alias gl` &nbsp; git pull
* `alias glog` &nbsp; git log --graph --pretty=format:'%Cred%h%Creset %an: %s - * `%Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit * `--date=relative
* `alias gp` &nbsp; git push origin HEAD
* `alias gc` &nbsp; git commit
* `alias gca` &nbsp; git commit -a
* `alias gco` &nbsp; git checkout
* `alias gcb` &nbsp; git copy-branch-name
* `alias gb` &nbsp; git branch
* `alias gs` &nbsp; git status -sb
* `alias gac` &nbsp; git add -A && git commit -m
* `alias ge` &nbsp; git-edit-new
* `git-quick-stats` &nbsp; git stats
* `git-all` &nbsp; stage all unstaged
* `git-delete-local-merged` &nbsp; delete all local branches that have been merged into HEAD
* `git-edit-new` &nbsp; open new, unstaged files in your $EDITOR
* `git-nuke` &nbsp; nukes a branch locally and on the origin remote
* `git-track` &nbsp; sets up your branch to track a remote branch. Assumes you mean `origin/$branch-name`.
* `git-undo` &nbsp; undo your last commit, but don't throw away your changes
* `git-unpushed` &nbsp; show the diff of everything you haven't pushed yet
* `git-wtf` &nbsp; displays the state of your repository in a readable, easy-to-scan format

## Functions
* `search` &nbsp; CTRL + SHIFT + F, recursive from current directory
* `internet_info` &nbsp; shows private and public ip's
* `generate_cert` &nbsp; generates local ssl certificates and add them to trusted list
* `extract` &nbsp; extract all-in-one function

## Utils tools
* `open` &nbsp; macos open
* `fzf` &nbsp; text finder
* `htop` &nbsp; process util
* `fkill` &nbsp; kill processes taking port (ie. :8080)
* `fpp (fp)` &nbsp; file picker (git status | fp or search {my_string} | fp)
* `tldr` &nbsp; better man
* `get-shit-done` &nbsp; block funny page like reddit, youtube etc.
* `thefuck (fk)` &nbsp; fix last misspelled command
* `regexgen [strings]` &nbsp; generate regex from given strings
* `nvm` &nbsp; node version manager
* `http` &nbsp; http (httpie) utils
* `df` &nbsp; show free disk space
* `clean-packages` &nbsp; clean not used, old packages
* `http-server` &nbsp; static files web server
* `ncdu` &nbsp; disk space usage tool
* `jq` &nbsp; json traverser
* `fd` &nbsp; better find
* `rg` &nbsp; regex utils
* `k6` &nbsp; performance testing tool
* `ripgrep (rg)` &nbsp; ripgrep recursively searches directories files content
* `mkcert` &nbsp; generates CA and then certficates signed by it

## Docker
* `alias d-c` &nbsp; docker-compose
* `fzf-docker` &nbsp; https://github.com/MartinRamm/fzf-docker
* `fzf-docker` &nbsp; https://github.com/pierpo/fzf-docker
* `lazydocker` &nbsp; docker cli gui
* `ctop` &nbsp; top for docker

## Kubernetes
* `kubetail` &nbsp; kubernetes tail logs
* `k9s` &nbsp; kubernetes cli gui
* `fubectl` &nbsp; https://github.com/kubermatic/fubectl

## CAT (BAT)
* `/` &nbsp; search, use n/N for next/previous result

## LNAV - Log file navigator
* `/` &nbsp; search, use n/N for next/previous result
