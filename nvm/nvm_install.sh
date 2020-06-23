source $HOME/.macbootstrap/basic.sh


# nvm
echo ">>>>>>>>>> nvm install <<<<<<<<<<"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install stable
nvm alias default stable
ln -s $(which node) /usr/local/bin/node
npm config -g set registry https://registry.npm.taobao.org

# npm install -g gnomon
# npm install -g vue-cli
# npm install -g es-checker
# npm install -g sequelize-auto
# npm install -g bash-language-server
# npm install -g eslint-plugin-html
# npm install -g js-beautify
# npm install -g hexo-cli
# npm install -g eslint