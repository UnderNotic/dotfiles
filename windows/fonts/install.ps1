mkdir $HOME\fonts-to-be-installed
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Bold%20Italic.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Bold_Italic.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Italic.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Italic.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Bold.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Bold.ttf
Invoke-WebRequest -Uri "https://github.com/UnderNotic/dotfiles/raw/windows-wsl/windows/fonts/fonts-to-be-installed/MesloLGS%20NF%20Regular.ttf" -OutFile $HOME\fonts-to-be-installed\MesloLGS_NF_Regular.ttf

$FONTS = 0x14
$Path=".\fonts-to-be-installed"
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