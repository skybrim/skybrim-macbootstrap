cd ~
curl -sLf https://spacevim.org/cn/install.sh | bash
rm -rf ~/.SpaceVim.d/init.toml
ln -s ~/.macbootstrap/vim-config/init.toml ~/.SpaceVim.d/init.toml

