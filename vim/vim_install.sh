source $HOME/.macbootstrap/basic.sh

echo ">>>>>>>>>> brew install vim <<<<<<<<<<"
brew install vim

ln -s ~/.macbootstrap/vim/vimrc ~/.vimrc

mkdir -p ~/.vim/pack/vendor/start/

git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/vendor/start/ctrlp.vim
git clone https://github.com/mileszs/ack.vim.git ~/.vim/pack/vendor/start/ack.vim
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/pack/vendor/start/easymotion