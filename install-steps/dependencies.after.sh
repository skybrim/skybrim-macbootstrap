source $HOME/.macbootstrap/basic.sh

# Homebrew
# ---------------
brew cask install sogouinput
sogou_base="/usr/local/Caskroom/sogouinput"
sogou_version="$sogou_base/"`ls "$sogou_base"`
sogou_app="$sogou_version/"`ls $sogou_version | grep .app | tail -n 1`
open "$sogou_app"

# Extension for preview
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook provisionql quicklookapk
brew cask install --appdir='/usr/local/bin' qlimagesize qlvideo # Avoid password

# Zip tool
brew cask install the-unarchiver

# Install applications
# ---------------

# Install Charles
if [[ -e /Applications/Charles.app ]]; then
    echo "You have installed charles"
else
    brew cask install charles
fi

# Dash 文档
if [[ ! -e /Applications/Dash.app ]]; then
    brew cask install dash
else
    echo "You have installed dash"
fi

# alfred 管家工具
if [[ ! -e /Applications/alfred\ 4.app ]]; then
    brew cask install alfred
else
    echo "You have installed alfred 4"
fi

# iina 播放器
if [[ ! -e /Applications/iina.app ]]; then
    brew cask install iina
else
    echo "You have installed iina"
fi

# ticktick 滴答清单
if [[ ! -e /Applications/ticktick.app ]]; then
    brew cask install ticktick
else
    echo "You have installed ticktick"
fi

# Fliqlo 屏保
if [[ ! -e /Applications/Fliqlo.app ]]; then
    brew cask install fliqlo
else
    echo "You have installed fliqlo"
fi

# spectacle 分屏工具
if [[ ! -e /Applications/spectacle.app ]]; then
    brew cask install spectacle
else
    echo "You have installed spectacle"
fi

# stretchly 定时休息提醒
if [[ ! -e /Applications/stretchly.app ]]; then
    brew cask install stretchly
else
    echo "You have installed stretchly"
fi

# calibre 电子书工具
if [[ ! -e /Applications/calibre.app ]]; then
    brew cask install calibre
else
    echo "You have installed calibre"
fi

# pusher 推送测试工具
if [[ ! -e /Applications/pusher.app ]]; then
    brew cask install pusher
else
    echo "You have installed pusher"
fi

# balenaetcher 烧录工具
if [[ ! -e /Applications/balenaetcher.app ]]; then
    brew cask install balenaetcher
else
    echo "You have installed balenaetcher"
fi

# picgo 上传图片
if [[ ! -e /Applications/picgo.app ]]; then
    brew cask install picgo
else
    echo "You have installed picgo"
fi

##################################################
#                                                #
#                                                #
#               Install Proxifier                #
#                                                #
#                                                #
##################################################
brew cask install proxifier
open /Applications/Proxifier.app
defaults write com.initex.proxifier.macosx.plist LicenseOwner -string "bestswifter"
defaults write com.initex.proxifier.macosx.plist LicenseKey -string "P427L-9Y552-5433E-8DSR3-58Z68"

# Python
# ---------------
unset ALL_PROXY
pip3 install --trusted-host pypi.python.org neovim jedi ipython
pip3 install --user --upgrade --trusted-host pypi.python.org PyYAML

# Gem update
sudo gem update --system 2.7.6
sudo gem install -n /usr/local/bin cocoapods
sudo gem install -n /usr/local/bin cocoapods-plugins
sudo gem install colored

# nvm & npm install
# if [[ ! -d $HOME/.nvm ]]; then
#     mkdir $HOME/.nvm
# fi
# export NVM_DIR="$HOME/.nvm"
# source $(brew --prefix nvm)/nvm.sh
# export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
# nvm install 9.11.0
# ~/.macbootstrap/install-steps/node_global.sh

# hook login
~/.macbootstrap/install-steps/hook_login.sh
