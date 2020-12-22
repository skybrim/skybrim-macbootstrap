#!/bin/sh
source $HOME/.macbootstrap/basic.sh

# install v2ray
brew tap v2ray/v2ray
brew install v2ray-core

# 关联 v2ray 配置文件
ln -s ~/.macbootstrap/proxy/config.json /usr/local/etc/v2ray/config.json
# 关联本地 pac 文件
sudo ln -s ~/.macbootstrap/proxy/ss.pac /Library/WebServer/Documents/ss.pac
# 终端开启代理
# export all_proxy=socks5://127.0.0.1:10009
# 终端取消代理
# unset ALL_PROXY
# sudo apachectl start
# brew services start v2ray-core

echo ">>>>>>>>>> zsh config <<<<<<<<<<"
sh ~/.macbootstrap/zsh/zsh_install.sh

echo ">>>>>>>>>> vim config <<<<<<<<<<"
sh ~/.macbootstrap/vim/vim_install.sh

echo ">>>>>>>>>> cli_install run <<<<<<<<<<"
sh ~/.macbootstrap/install-steps/cli_install.sh

echo ">>>>>>>>>> software_install run<<<<<<<<<<"
sh ~/.macbootstrap/install-steps/software_install.sh

echo ">>>>>>>>>> git config <<<<<<<<<<"
sh ~/.macbootstrap/git/git_init.sh

echo ">>>>>>>>>> python config <<<<<<<<<<"
sh ~/.macbootstrap/python/python_install.sh

echo ">>>>>>>>>> web config <<<<<<<<<<"
sh ~/.macbootstrap/web/nvm_install.sh

# 设置 mac (关闭 guest | 隐藏 Docker)
echo ">>>>>>>>>> mac config <<<<<<<<<<"
sh ~/.macbootstrap/mac-config/macos.sh

# 开机脚本
echo ">>>>>>>>>> hook_login run <<<<<<<<<<"
sh ~/.macbootstrap/mac-config/hook_login.sh
