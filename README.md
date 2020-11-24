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
            "closeOnExit": "always"
        }
    }
}
```

# Installation


## In windows powershell (admin rights)
```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/UnderNotic/dotfiles/windows-wsl/windows/setup.ps1'))
```

## In WSL Bash
``` bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/undernotic/dotfiles/windows-wsl/configure.sh)"
```

# Shortcuts

[See here](https://github.com/UnderNotic/dotfiles/blob/windows-wsl/CHEATSHEET.md)
