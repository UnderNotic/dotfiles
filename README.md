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

Add `"startingDirectory": "."` to each profile in list, for example:
```json
{
  "commandline": "powershell.exe",
  "startingDirectory": ".",
  "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
  "hidden": false,
  "name": "Windows PowerShell"
}
```
This way using `wt` in explorer location bar will open terminal in current dir.

## Install WebStorm

- Use wget to install webstorm from https://www.jetbrains.com/webstorm/download/#section=linux
- Extract webstorm

```bash
sudo tar xzf WebStorm-*.tar.gz -C /opt/
```

- Run webstorm.sh
- Use webstorm command to run

## Window store

- Messenger
- WhatsApp

## Optional

### Set ditto/copyq global shortcut to (alt + `)

### Setup powershell prompt

Install powershell posh-git and oh-my-posh

```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module PSFzf -Scope CurrentUser
```

`notepad $PROFILE`  
 copy content to notepad -> https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/powershell/profile.ps1

### Extend right click context menu 
https://github.com/UnderNotic/dotfiles/blob/windows-wsl/windows/wt/install.ps1

### Disable fast startup on notebook (if wsl networking doesn't work after waking up)

### Install fkill
  In cmd: `npm install -g fkill-cli`

### Use extended right-click menu by default
In cmd: `reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve`

### Use ThisIsWin11
  https://github.com/builtbybel/ThisIsWin11

### Setup git-bash
  https://www.youtube.com/watch?v=aQDsgCV4US0&t=846s

## WSL Internet fix

Run this script (right-click run with powershell)
[See here](https://github.com/UnderNotic/dotfiles/blob/windows-wsl/windows/wsl-fix/WSL2-Net-Fix.ps1)

## Shortcuts

[See here](https://github.com/UnderNotic/dotfiles/blob/windows-wsl/CHEATSHEET.md)

### Inspired from https://github.com/jayharris/dotfiles-windows
