#!/bin/sh

common_software="iterm2 firefox notion alfred fliqlo sogouinput the-unarchiver stretchly"
source_control_software="fork xversion"
ide_software="visual-studio-code dash tableplus pusher"

brew_i common_software
# brew_i source_control_software
brew_i ide_software

# # Xversion
# if [[ ! -e /Applications/xversion.app ]]; then
#     echo ">>>>>>>>>> brew  install Xversion <<<<<<<<<<"
#     ln -s ~/.macbootstrap/install-steps/homebrew__rb/xversion.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-/s/xversion.rb
#     brew  install xversion
# else
#     echo "You have installed xversion"
# fi
