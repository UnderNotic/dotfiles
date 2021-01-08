$subpath = '\Microsoft\Windows\Start Menu\Programs\Startup\terminal.ahk'
$outpath = $env:APPDATA + $subpath
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/auto-hotkey/terminal.ahk" -OutFile $outpath
