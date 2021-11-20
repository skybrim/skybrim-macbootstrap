#!/bin/sh

source ~/.macbootstrap/install_func.sh

echo_blue 'zsh config run'
sh ~/.macbootstrap/zsh/zsh_config.sh

# 更新brew
brew update

# install v2ray
brew tap v2ray/v2ray
brew install v2ray-core
# 关联 v2ray 配置文件
# ln -s ~/.macbootstrap/proxy/config.json /usr/local/etc/v2ray-core/config.json
# 关联本地 pac 文件
# sudo ln -s ~/.macbootstrap/proxy/ss.pac /Library/WebServer/Documents/ss.pac
# 终端开启代理
# export all_proxy=socks5://127.0.0.1:10009
# 终端取消代理
# unset ALL_PROXY
# sudo apachectl start
# brew services start v2ray-core

echo_blue 'vim config run'
sh ~/.macbootstrap/vim/vim_config.sh

echo_blue 'cli install run'
sh ~/.macbootstrap/install-steps/cli_install.sh

echo_blue 'software install run'
sh ~/.macbootstrap/install-steps/software_install.sh

echo_blue 'git config run'
sh ~/.macbootstrap/git/git_config.sh

echo_blue 'ruby config run'
sh ~/.macbootstrap/ruby/ruby_config.sh

# echo_blue 'python config run'
# sh ~/.macbootstrap/python/python_install.sh

echo_blue 'web config run'
sh ~/.macbootstrap/web/web_config.sh

echo_blue 'mac confgi run'
sh ~/.macbootstrap/mac/mac_config.sh

# 开机自动执行脚本
echo_blue 'hook login'
sh ~/.macbootstrap/mac/hook_login.sh
