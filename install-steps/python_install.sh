source $HOME/.macbootstrap/basic.sh


# anaconda
if [[ ! -e /Applications/Anaconda.app ]]; then
    echo ">>>>>>>>>> brew cask install anaconda <<<<<<<<<<"
    brew cask install anaconda
else
    echo "You have installed Anaconda"
fi
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