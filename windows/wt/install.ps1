## right-click context setup
# Set-ExecutionPolicy Bypass -Scope Process -Force;
# [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/lextm/windowsterminal-shell/master/install.ps1'))

# install scoop and lsd
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop install lsd

# install mc config file
mkdir -p $HOME\Midnight` Commander 2>$null
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/mc/ini" -OutFile $HOME\Midnight` Commander\ini