#!/bin/sh

source ~/.macbootstrap/install_func.sh

personal_software="wechat qq iina"
# calibre balenaetcher chromedriver picgo
brew_c $personal_software

# if [[ ! -e /Applications/CodeRunner.app ]]; then
#     echo ">>>>>>>>>> brew  install coderunner <<<<<<<<<<"
#     brew  install coderunner
# else
#     echo "You have installed coderunner"
# fi
