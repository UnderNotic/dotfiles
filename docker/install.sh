echo ''
echo 'Now adding user to docker group (running docker without sudo)'
echo ''
sudo gpasswd -a $USER docker
newgrp docker

# ctop install
echo ''
echo "Now installing ctop..."
echo ''
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.3/ctop-0.7.3-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop
