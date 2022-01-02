#!/bin/bash

echo ''
echo "Creating project structure..."
echo ''
# just mount /workspace under m2 instead of this
# sudo mkdir /workspace
# sudo chown $USER /workspace
# sudo chmod 775 /workspace
# sudo ln -s /workspace ~/workspace
mkdir -p ~/workspace/projects
mkdir -p ~/workspace/101
mkdir -p ~/workspace/open_source
mkdir -p ~/workspace/work

echo ''
echo "Install macos command line tools..."
echo ''
xcode-select —install

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
	echo "Checking out master branch..." && git checkout macos
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

echo '######################'
echo 'Badass Setup is ready!'
echo '######################'
