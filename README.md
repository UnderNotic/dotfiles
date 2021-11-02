# Windows dotfiles

[https://docs.microsoft.com/en-us/windows/wsl/install](https://docs.microsoft.com/en-us/windows/wsl/install)

## WSL Setup

In windows powershell (admin rights)

```powershell
wsl --install -d Ubuntu
```

https://docs.microsoft.com/en-us/windows/wsl/tutorials/gui-apps

## Chocolatey apps and basic setup

In windows powershell (admin rights)

```powershell
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/setup.ps1'))
```

## In WSL Bash

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/undernotic/dotfiles/windows-wsl/configure.sh)"
```

## Windows terminal config

```json
{
  "launchMode": "maximized",
  "theme": "dark",
  "profiles": {
    "defaults": {
      "fontFace": "MesloLGS NF",
      "closeOnExit": "always",
      "colorScheme": "Ambience"
    }
  },
  "schemes": [
    {
      "name": "Ambience",
      "black": "#2E3436",
      "red": "#CC0000",
      "green": "#4E9A06",
      "yellow": "#C4A000",
      "blue": "#3465A4",
      "purple": "#75507B",
      "cyan": "#06989A",
      "white": "#D3D7CF",
      "brightBlack": "#555753",
      "brightRed": "#EF2929",
      "brightGreen": "#8AE234",
      "brightYellow": "#FCE94F",
      "brightBlue": "#729FCF",
      "brightPurple": "#AD7FA8",
      "brightCyan": "#34E2E2",
      "brightWhite": "#EEEEEC",
      "background": "#181818",
      "foreground": "#D7DAD5"
    }
  ]
}
```

## Install WebStorm

- Use wget to install webstorm from https://www.jetbrains.com/webstorm/download/#section=linux
- Extract webstorm 
```bash
sudo tar xzf WebStorm-*.tar.gz -C /opt/
```
- Run webstorm.sh
- Use webstorm command to run

## Optional

- Set copyq global shortcut to (alt + `)

- Set powershell aliases
  https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/powershell/profile.ps1
  New-Item –Path $Profile –Type File –Force  // not needed 
  notepad $PROFILE

- disable fast startup on notebook (if wsl networking doesn't work after waking up)

- Install fkill
  In cmd: `npm install -g fkill-cli`

- install powershell posh-git and oh-my-posh

```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```

And put this is ps profile file:
notepad $PROFILE

```powershell
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme powerlevel10k_rainbow
```

- Inspired from https://github.com/jayharris/dotfiles-windows

## Shortcuts

[See here](https://github.com/UnderNotic/dotfiles/blob/windows-wsl/CHEATSHEET.md)

## WSL Internet fix

Run this script (right-click run with powershell)
[See here](https://github.com/UnderNotic/dotfiles/blob/windows-wsl/windows/wsl-fix/WSL2-Net-Fix.ps1)
