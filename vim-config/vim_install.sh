# vim configuration
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
backup_file ~/.vimrc
ln -s ~/.macbootstrap/zsh-config/.vimrc ~/.vimrc
vim +PlugInstall +qall
