#!/bin/bash

# for ubuntu gnome install 'Alt-Tab Switcher Popup Delay Removal' from ubuntu software center

# mouse sensivity on pc 1000dpi mouse
# should be runned on startup to do so add below line to: sudo nano /etc/rc.local and enabled by sudo systemctl enable rc-local.service
# xinput --set-prop 10 299 2

# Configuring max file watches (needed only for ubuntu)
# echo ''
# echo "Configuring max file watches..."
# echo ''
# echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


# SSD https://sites.google.com/site/easylinuxtipsproject/ssd
echo ''
echo "Set low swappiness for ssd drive"
echo ''
echo 'vm.swappiness=1' | sudo tee --append /etc/sysctl.conf > /dev/null

#Use hardware local time
echo ''
echo "Use hardware local time..."
echo ''
timedatectl set-local-rtc 1

# Creating project structure
echo ''
echo "Creating project structure..."
echo ''
mkdir -p ~/workspace/projects
mkdir -p ~/workspace/101
mkdir -p ~/workspace/open_source

echo ''
echo "Updating package lists..."
echo ''
sudo apt update
sudo apt -y upgrade

echo ''
echo "Installing dev essentials"
echo ''
sudo apt install software-properties-common wget curl file git tree kdiff3 build-essential g++ gcc libssl-dev apt-transport-https ca-certificates sqlite3 zlib1g-dev -y

echo ''
echo "Installing netstat etc."
echo ''
sudo apt install net-tools -y

echo ''
echo "Installing ncdu (disk space usage tool)"
echo ''
sudo apt install ncdu -y

# jq json query tool install
echo ''
echo 'Installing jq'
echo ''
sudo apt install jq -y

# Midnight commander install
echo ''
echo "Now installing Midnight commander..."
echo ''
sudo apt install mc -y

# Bash color scheme
echo ''
echo "Now installing solarized dark WSL color scheme..."
echo ''
wget https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark
mv dircolors.256dark ~/.dircolors

# Nautilus addons
echo ''
echo "Now installing Nautilus addons..."
echo ''
sudo apt install nautilus-image-converter nautilus-compare nautilus-wipe -y

# Drivers for usb smart card reader
echo ''
echo "Smart card reader..."
echo ''
sudo apt install pcscd  -y
sudo apt install pcsc-tools -y

# Qnapi
echo ''
echo 'Now installing qnapi'
echo ''
sudo add-apt-repository ppa:krzemin/qnapi -y
sudo apt install qnapi -y

# Peek for gif screen recording
echo ''
echo 'Now installing peek'
echo ''
sudo add-apt-repository ppa:peek-developers/stable  -y
sudo apt install peek -y

echo ''
echo 'Now installing ripgrep, fd and fzf'
echo ''
#Fzf and ripgrep for files fuzzy searching
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
sudo dpkg -i ripgrep_0.8.1_amd64.deb
rm ripgrep_0.8.1_amd64.deb
curl -LO https://github.com/sharkdp/fd/releases/download/v7.0.0/fd-musl_7.0.0_amd64.deb
sudo dpkg -i fd-musl_7.0.0_amd64.deb
rm fd-musl_7.0.0_amd64.deb

echo ''
echo 'Installing clamav antivirus'
echo ''
sudo apt install clamav -y

echo ''
echo "Now installing zsh..."
echo ''
sudo apt install zsh -y

echo ''
echo "Now installing git and bash-completion..."
sudo apt install bash-completion -y

echo ''
echo "Now configuring git-completion..."
GIT_VERSION=`git --version | awk '{print $3}'`
URL="https://raw.githubusercontent.com/git/git/v$GIT_VERSION/contrib/completion/git-completion.zsh"
echo ''
echo "Downloading git-completion for git version: $GIT_VERSION..."
if ! curl "$URL" --silent --output "$HOME/.git-completion.zsh"; then
	echo "ERROR: Couldn't download completion script. Make sure you have a working internet connection." && exit 1
fi

# oh-my-zsh install (type exit once installed to continue this script)
echo ''
echo "Now installing oh-my-zsh..."
echo ''
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "You will have to type 'exit' to continue this script"

# oh-my-zsh plugin install
echo ''
echo "Now installing oh-my-zsh plugins..."
echo ''
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

# powerlevel9k install
echo ''
echo "Now installing powerlevel9k..."
echo ''
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo ''
echo 'Now installing themes, papirus icons'
echo ''
#Papirus icons
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt install papirus-icon-theme -y
# sudo apt install variety -y #dynamic wallpaper change
sudo apt install arc-theme -y
sudo apt install materia-gtk-theme -y

echo ''
read -p "Do you want to install battery management tools (usefull for notebooks)? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ''
    echo 'Now installing tlp'
    echo ''
    sudo apt install tlp tlp-rdw  -y #linux power management for laptops
    sudo tlp start
fi
``
# Pull down personal dotfiles
echo ''
read -p "Do you want to use undernotic's dotfiles? y/n" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ''
	echo "Now pulling down undernotic dotfiles..."
	git clone https://github.com/undernotic/dotfiles.git ~/.dotfiles
	echo ''
	cd $HOME/.dotfiles && echo "switched to .dotfiles dir..."
	echo ''
	echo "Checking out master branch..." && git checkout master
	echo ''
	echo "Now configuring symlinks..." && $HOME/.dotfiles/script/bootstrap
	echo "Now installing..." && $HOME/.dotfiles/script/install
    if [[ $? -eq 0 ]]
    then
        echo "Successfully configured your environment with undernotic dotfiles..."
    else
        echo "undernotic dotfiles were not applied successfully..." >&2
fi
else 
	echo ''
    echo "You chose not to apply undernotic dotfiles. You will need to configure your environment manually..."
	echo ''
	# echo "Setting defaults for .zshrc and .bashrc..."
	# echo ''
	# echo "source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc && echo "added zsh-syntax-highlighting to .zshrc..."
	# echo ''
	# echo "source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc && echo "added zsh-autosuggestions to .zshrc..."
fi

# Setup and configure az cli
echo ''
read -p "Do you want to install Azure CLI? y/n (This will take some time...)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Now installing az cli..."
    sudo apt install libssl-dev libffi-dev -y
	curl -L https://aka.ms/InstallAzureCli | bash
	exec -l $SHELL
    if [[ $? -eq 0 ]]
    then
        echo "Successfully installed Azure CLI 2.0."
    else
        echo "Azure CLI not installed successfully." >&2
    fi
else 
    echo "You chose not to install Azure CLI. Exiting now."
fi

# Set default shell to zsh
echo ''
read -p "Do you want to change your default shell? y/n" -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Now setting default shell..."
    chsh -s $(which zsh)
    if [[ $? -eq 0 ]]
    then
        echo "Successfully set your default shell to zsh..."
    else
        echo "Default shell not set successfully..." >&2
    fi
fi

echo ''
echo 'Cleaning apt packages'
echo ''
sudo apt autoremove -y
sudo apt autoclean -y

echo '######################'
echo 'Badass Setup is ready!'
echo '######################'
