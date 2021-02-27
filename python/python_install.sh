#!/bin/sh

# miniconda
echo ">>>>>>>>>> brew cask install miniconda <<<<<<<<<<"
brew cask install miniconda
conda init zsh
# sudo chmod 777 ~/.conda/*