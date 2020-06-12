#!/bin/sh
source $HOME/.macbootstrap/basic.sh

# install v2ray
brew tap v2ray/v2ray
brew install v2ray-core

# 是否需要开启 v2ray
if not_wiley_network; then
ln -s ~/.macbootstrap/net-config/config.json /usr/local/etc/v2ray/config.json
brew services start v2ray-core
export all_proxy=socks5://127.0.0.1:10009 http_proxy=socks5://127.0.0.1:10009 https_proxy=socks5://127.0.0.1:10009
sudo apachectl start
sudo ln -s ~/.macbootstrap/net-config/ss.pac /Library/WebServer/Documents/ss.pac
else
    echo ">>>>>>>>>> no need to use ss now <<<<<<<<<<"
fi

# zsh config
echo ">>>>>>>>>> zsh_install run <<<<<<<<<<"
sh ~/.macbootstrap/zsh-config/zsh_install.sh

# start install
echo ">>>>>>>>>> cli_install run <<<<<<<<<<"
sh ~/.macbootstrap/install-steps/cli_install.sh
echo ">>>>>>>>>> software_install run<<<<<<<<<<"
sh ~/.macbootstrap/install-steps/software_install.sh

# git config
echo ">>>>>>>>>> git_init run <<<<<<<<<<"
sh ~/.macbootstrap/git-config/git_init.sh

# python
echo ">>>>>>>>>> python_install run <<<<<<<<<<"
sh ~/.macbootstrap/python/python_install.sh

# nvm config
echo ">>>>>>>>>> nvm_install run <<<<<<<<<<"
sh ~/.macbootstrap/nvm/nvm_install.sh

# 设置 mac (关闭 guest | 隐藏 Docker)
echo ">>>>>>>>>> mac setting run <<<<<<<<<<"
sudo sh ~/.macbootstrap/mac-config/macos.sh

# vim config
echo ">>>>>>>>>> vim setting run <<<<<<<<<<"
sudo sh ~/.macbootstrap/vim-config/vim_install.sh

# 取消代理
unset ALL_PROXY

# 开机脚本
echo ">>>>>>>>>> hook_login run <<<<<<<<<<"
~/.macbootstrap/mac-config/hook_login.sh
