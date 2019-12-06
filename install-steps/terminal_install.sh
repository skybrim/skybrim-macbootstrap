# terminal package install
source $HOME/.macbootstrap/basic.sh

if brew ls --versions gnu-sed > /dev/null; then
    echo "You have installed gsed"
else
    brew install gnu-sed
fi

# install sz/rz
if brew ls --versions lrzsz > /dev/null; then
    echo "You have installed lrzsz"
else
    brew install lrzsz
fi

# install coreutils
if [[ ! -e /usr/local/opt/coreutils ]]; then
    brew install coreutils
else
    echo "You have installed coreutils"
fi

brew install python3
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install redis
brew install cmake
brew install gawk
brew install autojump
brew install wget
brew install exiv2
brew install ssh-copy-id
brew install imagemagick
brew install catimg
brew install gpg
brew install icdiff
brew install scmpuff
brew install fzf
brew install fd
brew install the_silver_searcher
brew install vim
brew install exiftool
brew install archey
brew install ranger
brew install neofetch
brew install yasm
brew install git-lfs && git lfs install
$(brew --prefix)/opt/fzf/install --all

# Install chisel for debugging in lldb, https://github.com/facebook/chisel
brew install chisel
if [[ ! -e ~/.lldbinit ]]; then
    cp ~/.macbootstrap/config/.lldbinit ~/.lldbinit
else
    echo "You have installed chisel"
fi

# Extension for preview
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook provisionql quicklookapk
brew cask install --appdir='/usr/local/bin' qlimagesize qlvideo # Avoid password

# Zip tool
brew cask install the-unarchiver

# Gem update
sudo gem update # --system 2.7.6
sudo gem install -n /usr/local/bin cocoapods
sudo gem install -n /usr/local/bin cocoapods-plugins
sudo gem install colored

unset ALL_PROXY