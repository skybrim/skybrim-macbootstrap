source $HOME/.macbootstrap/basic.sh


# nvm
echo ">>>>>>>>>> nvm install <<<<<<<<<<"
curl -o- https://cdn.jsdelivr.net/gh/nvm-sh/nvm@v0.35.3/install.sh | bash

echo ">>>>>>>>>> node install <<<<<<<<<<"
nvm install 13.14.0
nvm alias default 13.14.0
ln -s $(which node) /usr/local/bin/node

# npm config -g set registry https://registry.npm.taobao.org

# hexo
# npm install -g hexo-cli

# whistle 抓包工具
# npm install -g whistle

# npm install -g gnomon
# npm install -g vue-cli
# npm install -g es-checker
# npm install -g sequelize-auto
# npm install -g bash-language-server
# npm install -g eslint-plugin-html
# npm install -g js-beautify
# npm install -g eslint