source $HOME/.macbootstrap/basic.sh

# miniconda
echo ">>>>>>>>>> brew cask install anaconda <<<<<<<<<<"
brew cask install anaconda
conda init zsh
sudo chmod 777 ~/.conda/*

# pycharm
if [[ ! -e /Applications/PyCharm.app ]]; then
    echo ">>>>>>>>>> brew cask install pycharm <<<<<<<<<<"
    brew cask install pycharm
else
    echo "You have installed PyCharm"
fi
