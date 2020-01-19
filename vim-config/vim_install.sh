# vim configuration
#source $HOME/.macbootstrap/basic.sh
#
#brew install vim
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#backup_file ~/.vimrc
#ln -s ~/.macbootstrap/zsh-config/.vimrc ~/.vimrc
#vim +PlugInstall +qall

cd ~
curl -sLf https://spacevim.org/cn/install.sh | bash
backup_file ~/.SpaceVim.d/init.toml
ln -s ~/.macbootstrap/vim-config/init.toml ~/.SpaceVim.d/init.toml

