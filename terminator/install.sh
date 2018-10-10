#Terminator install
echo ''
echo 'Now installing terminator...'
echo ''
sudo apt install terminator -y

mkdir -p ~/.config/Code/User
yes | cp -f ~/.dotfiles/terminator/config ~/.config/terminator/config

gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-b -m -l 2split"

gsettings set org.cinnamon.desktop.default-applications.terminal exec '/usr/bin/terminator -b -m -l 2split'
gsettings set org.cinnamon.desktop.default-applications.terminal exec-arg "-b -m -l 2split"