New-Item -path $profile -type file –force
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/powershell/profile.ps1" -OutFile $PROFILE

Install-Module PSFzf -Scope CurrentUser -Force
Install-Module ZLocation -Scope CurrentUser -Force