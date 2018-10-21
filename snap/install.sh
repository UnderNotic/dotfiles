echo ''
echo 'Now installing snap (snap packages will be visible after system restart)'
echo ''
sudo apt install snapd -y

echo ''
echo 'Now installing slack'
echo ''
sudo snap install slack --classic

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
sudo snap install vscode --classic

echo ''
echo 'Now installing robo3t - mongodb client'
echo ''
sudo snap install robo3t-snap