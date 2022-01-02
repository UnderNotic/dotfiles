#setup nvm default global packages
echo ''
echo 'Setuping nvm default global packages'
echo ''
cp ./node/default-packages ~/.nvm/

# node install
echo ''
echo 'Installing nodejs'
echo ''
source ~/.nvm/nvm.sh

nvm install node
nvm use node