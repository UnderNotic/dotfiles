# workspace dirs
mkdir C:\workspace\projects
mkdir C:\workspace\101
mkdir C:\workspace\open_source
mkdir C:\workspace\work

# git
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/git/.gitconfig" -OutFile $HOME\.gitconfig
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/git/.gitconfig-work" -OutFile "C:\workspace\work\.gitconfig-work"

# font install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/fonts/install.ps1'))

# choco install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/choco/install.ps1'))

# wt install 
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/wt/install.ps1'))

# autohotkeyinstall
# iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/auto-hotkey/install.ps1'))
