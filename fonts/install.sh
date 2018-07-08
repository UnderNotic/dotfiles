# fonts for powerline install (change terminal to use sourcecodepro-powerline-awesome-regular font)
echo ''
echo "Now installing fonts..."
echo ''
sudo mkdir -p /usr/share/fonts/added
yes | sudo cp -rf ./file/* /usr/share/fonts/added
sudo apt install fonts-robot -y
sudo fc-cache -fv