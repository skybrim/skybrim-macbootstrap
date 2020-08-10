# terminal package install
source $HOME/.macbootstrap/basic.sh

echo ">>>>>>>>>> brew install git <<<<<<<<<<"
brew install git

echo ">>>>>>>>>> brew install bfg <<<<<<<<<<"
brew install bfg

echo ">>>>>>>>>> brew install lazygit <<<<<<<<<<"
brew install jesseduffield/lazygit/lazygit

echo ">>>>>>>>>> brew install gnu-sed <<<<<<<<<<"
brew install gnu-sed

echo ">>>>>>>>>> brew install lrzsz <<<<<<<<<<"
brew install lrzsz

echo ">>>>>>>>>> brew install coreutils <<<<<<<<<<"
brew install coreutils

echo ">>>>>>>>>> brew install --HEAD universal-ctags/universal-ctags/universal-ctags <<<<<<<<<<"
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

echo ">>>>>>>>>> brew install cmake <<<<<<<<<<"
brew install cmake

echo ">>>>>>>>>> brew install ninja <<<<<<<<<<"
brew install ninja

echo ">>>>>>>>>> brew install gawk <<<<<<<<<<"
brew install gawk

echo ">>>>>>>>>> brew install autojump <<<<<<<<<<"
brew install autojump

echo ">>>>>>>>>> brew install wget <<<<<<<<<<"
brew install wget

echo ">>>>>>>>>> brew install exiv2 <<<<<<<<<<"
brew install exiv2

echo ">>>>>>>>>> brew install ssh-copy-id <<<<<<<<<<"
brew install ssh-copy-id

echo ">>>>>>>>>> brew install imagemagick <<<<<<<<<<"
brew install imagemagick

echo ">>>>>>>>>> brew install catimg <<<<<<<<<<"
brew install catimg

echo ">>>>>>>>>> brew install gpg <<<<<<<<<<"
brew install gpg

echo ">>>>>>>>>> brew install icdiff <<<<<<<<<<"
brew install icdiff

echo ">>>>>>>>>> brew install scmpuff <<<<<<<<<<"
brew install scmpuff

echo ">>>>>>>>>> brew install fzf <<<<<<<<<<"
brew install fzf
$(brew --prefix)/opt/fzf/install --all

echo ">>>>>>>>>> brew install fd <<<<<<<<<<"
brew install fd

echo ">>>>>>>>>> brew install the_silver_searcher <<<<<<<<<<"
brew install the_silver_searcher

echo ">>>>>>>>>> brew install exiftool <<<<<<<<<<"
brew install exiftool

echo ">>>>>>>>>> brew install archey <<<<<<<<<<"
brew install archey

echo ">>>>>>>>>> brew install ranger <<<<<<<<<<"
brew install ranger

echo ">>>>>>>>>> brew install neofetch <<<<<<<<<<"
brew install neofetch

echo ">>>>>>>>>> brew install yasm <<<<<<<<<<"
brew install yasm

echo ">>>>>>>>>> brew install git-lfs <<<<<<<<<<"
brew install git-lfs && git lfs install

echo ">>>>>>>>>> brew install swiftlint <<<<<<<<<<"
brew install swiftlint

echo ">>>>>>>>>> brew install mitmproxy <<<<<<<<<<"
brew install mitmproxy

echo ">>>>>>>>>> brew install neovim <<<<<<<<<<"
brew install neovim

echo ">>>>>>>>>> brew install lsd <<<<<<<<<<"
brew install lsd

# Install chisel for debugging in lldb, https://github.com/facebook/chisel
echo ">>>>>>>>>> brew install chisel <<<<<<<<<<"
brew install chisel
rm -rf ~/.lldbinit
cp ~/.macbootstrap/config/.lldbinit ~/.lldbinit

echo ">>>>>>>>>> brew install the-unarchiver <<<<<<<<<<"
brew cask install the-unarchiver

# Extension for preview
echo ">>>>>>>>>> brew install lots preview <<<<<<<<<<"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook provisionql quicklookapk
brew cask install --appdir='/usr/local/bin' qlimagesize qlvideo # Avoid password

# Gem update
echo ">>>>>>>>>> Gem update <<<<<<<<<<"
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
