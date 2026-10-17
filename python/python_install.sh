#!/bin/sh

# miniconda
echo ">>>>>>>>>> brew cask install pyenv <<<<<<<<<<"
brew install pyenv
pyenv install 3.13.16
pyenv shell 3.13.16

pip3 config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
pip3 install imgcat
