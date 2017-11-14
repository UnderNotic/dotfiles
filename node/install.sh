if test ! $(which spoof)
then
  sudo npm install npm nodemon create-react-app jest eslint babel-eslint eslint-config-defaults eslint-plugin-react eslint-plugin-jest forever http-server pm2 tldr typings webpack webpack-dev-server autocannon -g
fi
