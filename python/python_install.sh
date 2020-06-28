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



# pip3 install flake8
# pip3 install yapf
# pip3 install autoflake
# pip3 install isort
# pip3 install coverage
# pip3 install pynvim
# pip3 install Markdown2PDF
# pip3 install pylint-django