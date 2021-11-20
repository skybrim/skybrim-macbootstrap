#!/bin/sh

source ~/.macbootstrap/install_func.sh

personal_software="wechat qq iina docker"
# calibre balenaetcher chromedriver picgo
brew_c $personal_software

# if [[ ! -e /Applications/CodeRunner.app ]]; then
#     echo ">>>>>>>>>> brew  install coderunner <<<<<<<<<<"
#     brew  install coderunner
# else
#     echo "You have installed coderunner"
# fi

# # weakauras-companion 魔兽世界wa更新
# if [[ ! -e /Applications/weakauras\ companion.app ]]; then
#     echo ">>>>>>>>>> brew  weakauras-companion <<<<<<<<<<"
#     brew install weakauras-companion
# else
#     echo "You have installed weakauras-companion"
# fi
