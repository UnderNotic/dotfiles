New-Item –Path $Profile –Type File –Force
notepad $profile

 and copy following


function gs(){
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
function gch {
	git checkout $args
}
function gb {
	git branch $args
}

Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module PSFzf