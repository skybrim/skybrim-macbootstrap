source $HOME/.macbootstrap/basic.sh


# nvm
echo ">>>>>>>>>> nvm install <<<<<<<<<<"
curl -o- https://cdn.jsdelivr.net/gh/nvm-sh/nvm@v0.35.3/install.sh | bash

echo ">>>>>>>>>> node install <<<<<<<<<<"
# LTS 版本
nvm install 14.15.1
nvm alias default 14.15.1
ln -s $(which node) /usr/local/bin/node

npm install -g hexo-cli
npm install -g create-react-app
npm install -g create-next-app
npm install -g yarn

# npm config -g set registry https://registry.npm.taobao.org

# whistle 抓包工具
# npm install -g whistle