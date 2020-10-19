Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


choco install mremoteng
choco install winscp
choco install mc
choco install vscode
choco install git
choco install gitextensions
choco install adobereader
choco install googlechrome
choco install 7zip
choco install notepadplusplus
choco install vlc
choco install nvm
choco install putty

choco install skype
choco install azure-cli
choco install spotify
choco install microsoft-teams
choco install discord
choco install slack
choco install postman

choco install libreoffice-fresh
choco install audacity
choco install jetbrains-rider
choco install jetbrainstoolbox

choco install handbrake.install

choco install firacode


choco install gimp
choco install avirafreeantivirus

choco install linqpad

choco install microsoft-windows-terminal
choco install transmission
choco install ccleaner.portable
choco install etcher
# choco install rufus


# choco install docker-desktop
# choco install docker-compose

# choco install wsl
# choco install wsl-ubuntu-2004