# Shortcuts

## Navigating
* `ALT + C` &nbsp; cd into dir, which is under current dir (show all dirs)
* `CTRL + T` &nbsp; paste file name into cli, which is under current dir (show all files)
* `CTRL + G` &nbsp; paste dir into cli from fasd list
* `CTRL + E` &nbsp; paste file name into cli from fasd list
* `CTRL + E within fzf list`&nbsp; open file/dir in code from fzf list in code
* `CTRL + O  within fzf list` &nbsp; open file/dir with xdg-open from fzf list in code
* `CTRL + R` &nbsp; use command from past
* `z` &nbsp; navigate using z
* `e` &nbsp; open file in code using z
* `o` &nbsp; open file/dir in xdg-open using z

## Terminal
* `CTRL + L` &nbsp; clean terminal
* `CTRL + SHIFT + UP/DOWN` &nbsp; go up/down line
* `SHIFT + UP/DOWN` &nbsp; go up/down a page
* `CTRL + SHIFT + E` &nbsp; split vertically
* `CTRL + D` &nbsp; exit terminal
* `CTRL + X` &nbsp; toggle terminal fullscreen
* `CTRL + L` &nbsp; clean terminal
* `CTRL + W` &nbsp; clean typed backwards
* `CTRL + K` &nbsp; clean typed forward
* `CTRL + U` &nbsp; clean typed

## MC
* `Ctrl + f` &nbsp; open/close MC
* `ALT + S` &nbsp; find by string in current dir
* `CTRL + T` &nbsp; select item
* \* &nbsp; reverse selection. If nothing was selected, all files will get selected.
* `Alt + ,` &nbsp; switch mc’s layout from left-right to top-bottom
* `Alt + i` &nbsp; synchronize the active panel with the other panel. That is, show the current directory in the other panel.
* `Alt + t` &nbsp; switch the panel’s listing mode in a loop: default, brief, long, user-defined. “long” is especially useful, because it maximises one panel so that it takes full width of the window and longer filenames fit on screen.
* `Alt + ?` &nbsp; shows the full Find dialog.
* `Ctrl + x s` &nbsp; (that is press Ctrl + x, let it go and then press s) - create a symbolic link (change s to l for a hardlink). I find it very useful and intuitive - the link will, of course, be created in the other panel. You can change it’s destination and name, like with any other file operation.
* `Alt + Shift + h` &nbsp; show the directory history. Might be easier to navigate than going back one entry at a time.

## LF 
* `space` &nbsp; toggle select
* `v` &nbsp; invert select
* `y` &nbsp; copy selected
* `d` &nbsp; cut selected
* `p` &nbsp; paste selected
* `i` &nbsp; preview
* `f` &nbsp; fzf go to selected file, which is under current dir
* `c` &nbsp; fzf go to selected dir, which is under current dir
* `z` &nbsp; use z
* `gh` &nbsp; go to home dir


## Utils tools
* `xd` &nbsp; open with xdg-open, can open dirs with nemo
* `htop` &nbsp; process util
* `bmon` &nbsp; network util
* `fkill` &nbsp; kill processes taking port (ie. :8080)
* `fpp` &nbsp; file picker (git status | fpp or search {my_string} | fpp)
* `tldr` &nbsp; better man
* `fzf` &nbsp; text finder
* `lazygit` &nbsp; git cli gui
* `lazydocker` &nbsp; docker cli gui
* `ctop` &nbsp; top for docker
* `get-shit-done` &nbsp; block funny page like reddit, youtube etc.
* `http` &nbsp; rest calls
* `fuck` &nbsp; fix last misspelled command
* `nvm` &nbsp; node version manager
* `http` &nbsp; http (httpie) utils
* `glances` &nbsp; more advanced process util
* `pydf` &nbsp; better df
* `df` &nbsp; show free disk space
* `clean-packages` &nbsp; clean not used, old packages
* `http-server` &nbsp; static files web server
* `clibboard (cb)` &nbsp; use cliboard in cli
* `ncdu` &nbsp; disk space usage tool
* `jq` &nbsp; json traverser
* `fd` &nbsp; better find
* `rg` &nbsp; regex utils
* `artillery` &nbsp; network perfomance testing tool
* `vegeta` &nbsp; network perfomance testing tool
* `regexgen [strings]` &nbsp; generate regex from given strings
* `ripgrep (rg)` &nbsp; ripgrep recursively searches directories files content
* `git-quick-stats` &nbsp; git repo stats
* `mkcert` &nbsp; generates CA and then certficates signed by it

## GIT
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
* `search` &nbsp; like CTRL + SHIFT + F, recursive from current directory
* `internet_info` &nbsp; shows private and public ip's
* `generate_cert` &nbsp; generates local ssl certificates and add them to trusted list
* `extract` &nbsp; extract all-in-one function
* `markdown-to-medium` &nbsp; push markdown to medium

## Docker
* `alias dr` &nbsp; docker
* `alias dr-c` &nbsp; docker-compose
