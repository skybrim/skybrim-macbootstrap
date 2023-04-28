#!/bin/sh

source ~/.macbootstrap/install_func.sh

common_software="iterm2 firefox notion alfred sogouinput the-unarchiver mos"
source_control_software="fork" # xversion
ide_software="visual-studio-code dash tableplus"

brew_c $common_software
brew_c $ide_software
brew_c source_control_software

# # Xversion
# if [[ ! -e /Applications/xversion.app ]]; then
#     echo ">>>>>>>>>> brew  install Xversion <<<<<<<<<<"
#     ln -s ~/.macbootstrap/install-steps/homebrew__rb/xversion.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-/s/xversion.rb
#     brew  install xversion
# else
#     echo "You have installed xversion"
# fi
