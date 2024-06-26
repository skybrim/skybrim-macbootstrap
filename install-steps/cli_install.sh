#!/bin/sh

source ~/.macbootstrap/install_func.sh

git_tools="git scmpuff icdiff exiftool git-lfs gpg"
compile_tools="cmake ninja yasm"
common_tools="coreutils wget exiv2 imagemagick ncdu tree colima swiftformat"
shell_tools="archey neofetch mitmproxy"
# preview_tools="qlstephen qlmarkdown quicklook-json webpquicklook provisionql quicklookapk qlvideo"

brew_i $git_tools
brew_i $compile_tools
brew_i $common_tools
brew_i $shell_tools
brew_i $preview_tools
