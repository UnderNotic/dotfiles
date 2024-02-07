function gs()
{
    git status -sb
}
function gl(){
    git pull
}
function glog(){
    git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative
}
function gp(){
    git push origin HEAD
}
function gd(){
    git diff
}
function gl(){
    git pull
}

function gl(){
    git pull
}

function ls(){
    lsd
}

function l(){
    lsd -A --group-dirs first
}

function ll(){
    lsd -lA --group-dirs first
}

function ..(){
    cd ..
}

function ...(){
    cd ..
    cd ..
}

function ....(){
    cd ..
    cd ..
    cd ..
}

function ws(){
    cd $HOME\workspace
}

function xd(){
    explorer $args
}


function mc(){
& 'C:\Program Files (x86)\Midnight Commander\mc.exe'
}

Import-Module PSFzf

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\pure.omp.json" | Invoke-Expression
Import-Module posh-git
Import-Module ZLocation;

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }