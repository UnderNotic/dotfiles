#!/bin/bash

# Dual boot setup
# Use rufus for windows usb creation
# Disable secure boot and reset uefi keys to default
# During linux install create 2 ext4 partitions one for / and second for /home, setting device for bootloader installation is not important.
# In case of grub failures grup-repair can be used in live linux usb.

# for ubuntu gnome install 'Alt-Tab Switcher Popup Delay Removal' from ubuntu software center

# mouse sensivity on pc 1000dpi mouse
# should be runned on startup to do so add below line to: sudo nano /etc/rc.local and enabled by sudo systemctl enable rc-local.service
# xinput --set-prop 10 299 2
# xinput --set-prop 9 299 -0.709    

# Configuring max file watches (needed only for ubuntu)
echo ''
echo "Configuring max file watches..."
echo ''
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Creating project structure
echo ''
echo "Creating project structure..."
echo ''
mkdir -p ~/workspace_linux/projects
mkdir -p ~/workspace_linux/101
mkdir -p ~/workspace_linux/open_source
mkdir -p ~/workspace_linux/work

echo ''
echo "Updating package lists..."
echo ''
sudo apt update
sudo apt -y upgrade

echo ''
echo "Installing dev essentials"
echo ''
sudo apt install software-properties-common wget curl file git tree kdiff3 build-essential g++ gcc libssl-dev apt-transport-https ca-certificates sqlite3 zlib1g-dev ack-grep python -y

echo ''
echo "Installing netstat etc."
echo ''
sudo apt install net-tools -y

echo ''
echo "Installing mtr"
echo ''
sudo apt install mtr -y

echo ''
echo "Installing grc..."
echo ''
sudo apt install grc -y

echo ''
echo 'Installing htop'
echo ''
sudo apt install htop -y

echo ''
echo 'Installing bmon'
echo ''
sudo apt install bmon -y

echo ''
echo 'Installing iftop'
echo ''
sudo apt install iftop -y

echo ''
echo "Installing ncdu (disk space usage tool)"
echo ''
sudo apt install ncdu -y

# jq json query tool install
echo ''
echo 'Installing jq'
echo ''
sudo apt install jq -y

# aws cli install
echo ''
echo 'Installing awscli'
echo ''
sudo apt install awscli -y

# Midnight commander install
echo ''
echo "Now installing Midnight commander..."
echo ''
sudo add-apt-repository ppa:eugenesan/ppa -y
sudo apt-get update
sudo apt install mc -y

# Micro install 
echo ''
echo "Now installing Micro..."
echo ''
sudo apt install micro -y

# Bash color scheme
echo ''
echo "Now installing solarized dark WSL color scheme..."
echo ''
wget https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark
mv dircolors.256dark ~/.dircolors

echo ''
echo 'Now installing ripgrep and fzf'
echo ''
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo apt install ripgrep -y

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

# this is here, because brew install does not work
echo ''
echo 'Now installing lsd...'
echo ''
wget https://github.com/sharkdp/fd/releases/download/v8.1.1/fd-musl_8.1.1_amd64.deb -O fd-musl_8.1.1_amd64.deb
sudo dpkg -i fd-musl_8.1.1_amd64.deb
sudo rm fd-musl_8.1.1_amd64.deb

# this is here, because brew install does not work
echo ''
echo 'Now installing fd...'
echo ''
wget https://github.com/Peltoche/lsd/releases/download/0.18.0/lsd_0.18.0_amd64.deb -O lsd_0.18.0_amd64.deb
sudo dpkg -i lsd_0.18.0_amd64.deb
sudo rm lsd_0.18.0_amd64.deb

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

# powerlevel10k install
echo ''
echo "Now installing powerlevel10k..."
echo ''
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k


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
	echo "Checking out windows-wsl branch..." && git checkout windows-wsl
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
