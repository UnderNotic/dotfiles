# WSL Setup

[https://docs.microsoft.com/en-us/windows/wsl/install-win10](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Change windows terminal config:
```json
{
  "launchMode": "maximized",
  "theme": "dark",
  "profiles":
    {
      "defaults":
        {
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

# Installation


## In windows powershell (admin rights)

```powershell
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/setup.ps1'))
```

## In WSL Bash
``` bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/undernotic/dotfiles/windows-wsl/configure.sh)"
```

## Optional
* Set copyq global shortcut to (alt + `)

* Install oh-my-posh for powershell
https://github.com/JanDeDobbeleer/oh-my-posh

* Install fkill
In cmd: `npm install -g fkill-cli`

* Install taskbarx
https://chrisandriessen.nl/taskbarx


# Shortcuts

[See here](https://github.com/UnderNotic/dotfiles/blob/windows-wsl/CHEATSHEET.md)
