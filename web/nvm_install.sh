source $HOME/.macbootstrap/basic.sh


# nvm
echo ">>>>>>>>>> nvm install <<<<<<<<<<"
curl -o- https://cdn.jsdelivr.net/gh/nvm-sh/nvm@v0.35.3/install.sh | bash

echo ">>>>>>>>>> node install <<<<<<<<<<"
# LTS 版本
nvm install 12.18.3
nvm alias default 12.18.3
ln -s $(which node) /usr/local/bin/node

# hexo
npm install -g hexo-cli
# react
npm install -g create-react-app
# next.js
npm install -g create-next-app

# npm config -g set registry https://registry.npm.taobao.org

# whistle 抓包工具
# npm install -g whistle


echo ">>>>>>>>>> brew install yarn <<<<<<<<<<"
brew install yarn