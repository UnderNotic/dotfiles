echo ''
echo 'Now installing snap (snap packages will be visible after system restart)'
echo ''
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd -y


echo ''
echo 'Now installing lnav'
echo ''
sudo snap install lnav
