#!/bin/sh

cli_name="git scmpuff"

echo ">>>>>>>>>> brew install git <<<<<<<<<<"
brew install git

echo ">>>>>>>>>> brew install scmpuff <<<<<<<<<<"
brew install scmpuff

echo ">>>>>>>>>> brew install icdiff <<<<<<<<<<"
brew install icdiff

echo ">>>>>>>>>> brew install exiftool <<<<<<<<<<"
brew install exiftool

echo ">>>>>>>>>> brew install lazygit <<<<<<<<<<"
brew install jesseduffield/lazygit/lazygit

echo ">>>>>>>>>> brew install coreutils <<<<<<<<<<"
brew install coreutils

echo ">>>>>>>>>> brew install cmake <<<<<<<<<<"
brew install cmake

echo ">>>>>>>>>> brew install ninja <<<<<<<<<<"
brew install ninja

# 上传下载
echo ">>>>>>>>>> brew install lrzsz <<<<<<<<<<"
brew install lrzsz

echo ">>>>>>>>>> brew install autojump <<<<<<<<<<"
brew install autojump

echo ">>>>>>>>>> brew install wget <<<<<<<<<<"
brew install wget

echo ">>>>>>>>>> brew install ssh-copy-id <<<<<<<<<<"
brew install ssh-copy-id

# 读取图片 Exif
echo ">>>>>>>>>> brew install exiv2 <<<<<<<<<<"
brew install exiv2

# 图片处理
echo ">>>>>>>>>> brew install imagemagick <<<<<<<<<<"
brew install imagemagick

echo ">>>>>>>>>> brew install gpg <<<<<<<<<<"
brew install gpg

echo ">>>>>>>>>> brew install fzf <<<<<<<<<<"
brew install fzf
$(brew --prefix)/opt/fzf/install --all

# 终端彩色小苹果
echo ">>>>>>>>>> brew install archey <<<<<<<<<<"
brew install archey

# 系统信息
echo ">>>>>>>>>> brew install neofetch <<<<<<<<<<"
brew install neofetch

echo ">>>>>>>>>> brew install git-lfs <<<<<<<<<<"
brew install git-lfs && git lfs install

echo ">>>>>>>>>> brew install mitmproxy <<<<<<<<<<"
brew install mitmproxy

brew install ncdu

# ls 增强
echo ">>>>>>>>>> brew install lsd <<<<<<<<<<"
brew install lsd

# Extension for preview
echo ">>>>>>>>>> brew install lots preview <<<<<<<<<<"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook provisionql quicklookapk
brew cask install --appdir='/usr/local/bin' qlimagesize qlvideo # Avoid password

# rvm
brew install rbenv
brew install ruby-build
brew install rbenv-vars
rbenv install 2.7.2
rbenv shell 2.7.2
gem install bundler
# bundle init

# 汇编编译器
echo ">>>>>>>>>> brew install yasm <<<<<<<<<<"
brew install yasm

# Install chisel for debugging in lldb, https://github.com/facebook/chisel
echo ">>>>>>>>>> brew install chisel <<<<<<<<<<"
brew install chisel
rm -rf ~/.lldbinit
cp ~/.macbootstrap/config/.lldbinit ~/.lldbinit

# echo ">>>>>>>>>> brew install bfg <<<<<<<<<<"
# brew install bfg

# echo ">>>>>>>>>> brew install swiftlint <<<<<<<<<<"
# brew install swiftlint

# echo ">>>>>>>>>> brew install gnu-sed <<<<<<<<<<"
# brew install gnu-sed

# echo ">>>>>>>>>> brew install gawk <<<<<<<<<<"
# brew install gawk

# 把图片渲染到终端显示
# echo ">>>>>>>>>> brew install catimg <<<<<<<<<<"
# brew install catimg

# echo ">>>>>>>>>> brew install fd <<<<<<<<<<"
# brew install fd

# echo ">>>>>>>>>> brew install the_silver_searcher <<<<<<<<<<"
# brew install the_silver_searcher

# echo ">>>>>>>>>> brew install ranger <<<<<<<<<<"
# brew install ranger

#echo ">>>>>>>>>> brew install mongodb <<<<<<<<<<"
#brew tap mongodb/brew
#brew install mongodb/brew/mongodb-community

#echo ">>>>>>>>>> brew install mysql <<<<<<<<<<"
#brew install mysql@5.7
#brew link --force mysql@5.7

#echo ">>>>>>>>>> brew install redis <<<<<<<<<<"
#brew install redis
