
sudo chown $USER ~/.cache/vimfiles
sudo chown $USER ~/.local/share/nvim
sudo chown $USER ~/.local/share/fonts

cd ~
curl -sLf https://spacevim.org/cn/install.sh | bash
# rm -rf ~/.SpaceVim.d/init.toml
# ln -s ~/.macbootstrap/vim/init.toml ~/.SpaceVim.d/init.toml

