source $HOME/.macbootstrap/basic.sh

# miniconda
echo ">>>>>>>>>> brew cask install miniconda <<<<<<<<<<"
brew cask install miniconda
conda init zsh
sudo chmod 777 ~/.conda/*

# pycharm
if [[ ! -e /Applications/PyCharm.app ]]; then
    echo ">>>>>>>>>> brew cask install pycharm <<<<<<<<<<"
    brew cask install pycharm
else
    echo "You have installed PyCharm"
fi

# spider
# pip install requests
# pip install pyquery
# pip install pymongo
# pip install selenium
# pip install aiohttp
# pip install pyppeteer
# pyppeteer-install