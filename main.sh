#!/bin/sh
source $HOME/.macbootstrap/basic.sh



# install v2ray
brew tap v2ray/v2ray
brew install v2ray-core

# 是否需要开启 v2ray
if not_wiley_network; then
ln -s ~/.macbootstrap/net-config/config.json /usr/local/etc/v2ray/config.json
brew services start v2ray-core
export ALL_PROXY=socks5://127.0.0.1:10009
sudo apachectl start
sudo ln -s ~/.macbootstrap/net-config/ss.pac /Library/WebServer/Documents/ss.pac
else
    echo "no need to use ss now"
fi

# start install
sh ~/.macbootstrap/install-steps/software_install.sh
sh ~/.macbootstrap/install-steps/terminal_install.sh
# git config
sh ~/.macbootstrap/git-config/git_install.sh
# zsh config
sh ~/.macbootstrap/zsh-config/zsh_install.sh
# node config
sh ~/.macbootstrap/node-config/node_install.sh

# 设置 mac (关闭 guest | 隐藏 Docker)
sudo sh ~/.macbootstrap/mac-config/macos.sh

# vim config
sudo sh ~/.macbootstrap/vim-config/vim_install.sh

# 取消代理
unset ALL_PROXY

# ~/.macbootstrap/install-steps/hook_login.sh
