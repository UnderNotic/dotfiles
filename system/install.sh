#!/bin/bash

echo ''
echo 'Installing system wide environment variables'
echo ''
sudo touch /etc/profile.d/env_variables.sh
sudo echo 'export GTK_IM_MODULE="xim"' > /etc/profile.d/env_variables.sh