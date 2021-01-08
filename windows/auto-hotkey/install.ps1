$outpath = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp'
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/auto-hotkey/terminal.ahk" -OutFile $outpath
