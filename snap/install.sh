echo ''
echo 'Now installing snap (snap packages will be visible after system restart)'
echo ''
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd -y

echo ''
echo 'Now installing slack'
echo ''
sudo snap install slack --classic

echo ''
echo 'Now installing postman'
echo ''
sudo snap install postman

echo ''
echo 'Now installing gitter'
echo ''
sudo snap install gitter-desktop

echo ''
echo 'Now installing spotify'
echo ''
sudo snap install spotify

echo ''
echo 'Now installing skype'
echo ''
sudo snap install skype --classic

echo ''
echo 'Now installing discord'
echo ''
sudo snap install discord

echo ''
echo 'Now installing vs code'
echo ''
sudo snap install code --classic

echo ''
echo 'Now installing micro'
echo ''
snap install micro --classic

echo ''
echo 'Now installing robo3t - mongodb client'
echo ''
sudo snap install robo3t-snap

echo ''
echo 'Now installing fkill'
echo ''
sudo snap install fkill

echo ''
echo 'Now installing termius'
echo ''
sudo snap install termius-app

echo ''
echo 'Now installing bitwarden'
echo ''
sudo snap install bitwarden

echo ''
echo 'Now installing gitkraken'
echo ''
sudo snap install gitkraken --classic

echo ''
echo 'Now installing foliate mobi reader'
echo ''
sudo snap install foliate