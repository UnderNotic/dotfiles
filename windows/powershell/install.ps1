New-Item -path $profile -type file –force
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/powershell/profile.ps1" -OutFile $PROFILE

Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
Install-Module PSFzf -Scope CurrentUser -Force