Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -y


choco install vscode -y
choco install git -y
choco install gitextensions -y
choco install linqpad -y
choco install firacode -y
choco install sql-server-management-studio -y
choco install microsoft-windows-terminal -y


choco install jetbrains-rider -y
choco install resharper -y
choco install dotcover -y
choco install dotmemory -y
choco install dotpeek -y
choco install dottrace -y
choco install jetbrainstoolbox -y


choco install dotnet -y
choco install nodejs -y
choco install nvm -y
choco install python3 -y
choco install powershell-core -y


choco install mremoteng -y
choco install winscp -y
choco install putty -y


choco install fiddler -y
choco install postman -y
choco install azure-cli -y


choco install mc -y
choco install adobereader -y
choco install googlechrome -y
choco install 7zip -y
choco install notepadplusplus -y
choco install vlc -y
choco install skype -y
choco install spotify -y
choco install microsoft-teams -y
choco install discord -y
choco install slack -y
choco install libreoffice-fresh -y
choco install audacity -y
choco install gimp -y
choco install avirafreeantivirus -y
choco install transmission -y
choco install ccleaner.portable -y
choco install etcher -y


choco install handbrake.install -y
choco install obs-studio -y


wsl --set-default-version 2
choco install docker-desktop -y
choco install wsl-ubuntu-2004 -y
# choco install wsl -y