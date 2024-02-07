$Path="$HOME\fonts-to-be-installed"

if (Test-Path -Path $Path) {
    "Path already exists, not installing fonts!"
    return
}

mkdir $Path
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Bold%20Italic.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Bold_Italic.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Italic.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Italic.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Bold.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Bold.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Regular.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Regular.ttf

Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf" -OutFile $HOME\fonts-to-be-installed\Fira_Code_Regular_Nerd_Font_Complete_Mono.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf" -OutFile $HOME\fonts-to-be-installed\Fira_Code_Regular_Nerd_Font_Complete.ttf

Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf" -OutFile $HOME\fonts-to-be-installed\JetBrains_Mono_Regular_Nerd_Font_Complete_Mono.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf" -OutFile $HOME\fonts-to-be-installed\JetBrains_Mono_Regular_Nerd_Font_Complete.ttf


$FONTS = 0x14
$objShell = New-Object -ComObject Shell.Application
$objFolder = $objShell.Namespace($FONTS)
$Fontdir = dir $Path
foreach($File in $Fontdir) {
if(!($file.name -match "pfb$"))
{
$try = $true
$installedFonts = @(Get-ChildItem c:\windows\fonts | Where-Object {$_.PSIsContainer -eq $false} | Select-Object basename)
$name = $File.baseName

foreach($font in $installedFonts)
{
$font = $font -replace "_", ""
$name = $name -replace "_", ""
if($font -match $name)
{
$try = $false
}
}
if($try)
{
$objFolder.CopyHere($File.fullname)
}
}
}