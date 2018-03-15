#!/bin/bash

# mouse sensivity on pc 1000dpi mouse
# should be runned on startup to do so add below line to: sudo nano /etc/rc.local and enabled by sudo systemctl enable rc-local.service
# xinput --set-prop 10 299 2

# Add all needed PPA's
# TODO
# FOR QNAPI sudo add-apt-repository ppa:krzemin/qnapi

# Update pkg lists
echo ''
echo "Updating package lists..."
echo ''
sudo apt-get update

echo ''
echo "Installing dev essentials"
echo ''
sudo apt-get install build-essential g++ -y

#grc install
echo ''
echo "Now installing grc..."
echo ''
sudo apt-get install grc -y

# zsh install
echo ''
echo "Now installing zsh..."
echo ''
sudo apt-get install zsh -y

# Installing git completion
echo ''
echo "Now installing git and bash-completion..."
sudo apt-get install git bash-completion -y

echo ''
echo "Now configuring git-completion..."
GIT_VERSION=`git --version | awk '{print $3}'`
URL="https://raw.githubusercontent.com/git/git/v$GIT_VERSION/contrib/completion/git-completion.zsh"
echo ''
echo "Downloading git-completion for git version: $GIT_VERSION..."
if ! curl "$URL" --silent --output "$HOME/.git-completion.zsh"; then
	echo "ERROR: Couldn't download completion script. Make sure you have a working internet connection." && exit 1
fi

# oh-my-zsh install
echo ''
echo "Now installing oh-my-zsh..."
echo ''
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

#fonts for powerline install
echo ''
echo "Now installing nerd-fonts..."
echo ''
mkdir -p ~/.local/share/fonts
yes | cp -f ./fonts/SourceCodePro+Powerline+Awesome+Regular.ttf ~/.local/share/fonts
yes | cp -f ./fonts/Ubuntu+Mono+Nerd+Font+Complete+Mono Windows+Compatible.ttf ~/.local/share/fonts
yes | cp -f ./fonts/Sauce+Code+Pro+Nerd+Font+Complete+Windows+Compatible.ttf ~/.local/share/fonts
yes | cp -f ./fonts/Sauce+Code+Pro+Nerd+Font+Complete Mono.ttf ~/.local/share/fonts
yes | cp -f ./fonts/Sauce+Code+Pro+Nerd+Font+Complete.ttf ~/.local/share/fonts
sudo fc-cache -fv

# ruby install
echo ''
echo 'Installing ruby'
echo ''
sudo apt-get install ruby ruby-dev -y

# jekyll install
echo ''
echo 'Installing Jekyll'
echo ''
sudo gem install bundler
sudo gem install jekyll

# travss install
echo ''
echo 'Installing Jekyll'
echo ''
gem install travis

# Midnight commander install
echo ''
echo "Now installing Midnight commander..."
echo ''
sudo apt-get install mc -y

# Bash color scheme
echo ''
echo "Now installing solarized dark WSL color scheme..."
echo ''
wget https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark
mv dircolors.256dark .dircolors

# Pull down personal dotfiles
echo ''
read -p "Do you want to use undernotic's dotfiles? y/n" -n 1 -r
echo    # (optional) move to a new line
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
	echo "Setting defaults for .zshrc and .bashrc..."
	echo ''
	echo "source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc && echo "added zsh-syntax-highlighting to .zshrc..."
	echo ''
	echo "source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc && echo "added zsh-autosuggestions to .zshrc..."
fi

# Setup and configure az cli
echo ''
read -p "Do you want to install Azure CLI? y/n (This will take some time...)" -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Now installing az cli..."
    sudo apt-get install python libssl-dev libffi-dev python-dev build-essential -y
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
    chsh -s $(which zsh); exit 0
    if [[ $? -eq 0 ]]
    then
        echo "Successfully set your default shell to zsh..."
    else
        echo "Default shell not set successfully..." >&2
fi
else 
    echo "You chose not to install Azure CLI. Exiting now..."
fi
echo ''

echo '	Badass Setup is ready!'

echo ''
echo 'Now installing additional tools'
echo ''

sudo apt-get install qnapi -y
