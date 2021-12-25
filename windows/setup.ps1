# workspace dirs
mkdir $HOME\workspace\projects
mkdir $HOME\workspace\101
mkdir $HOME\workspace\open_source
mkdir $HOME\workspace\work

# git
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/git/.gitconfig" -OutFile $HOME\.gitconfig
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/git/.gitconfig-work" -OutFile $HOME\workspace\work\.gitconfig-work

# font install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/fonts/install.ps1'))

# choco install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/choco/install.ps1'))

# terminal utilities install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/wt/install.ps1'))

# powershell install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/powershell/install.ps1'))

# windows store install
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/winget/install.ps1'))
