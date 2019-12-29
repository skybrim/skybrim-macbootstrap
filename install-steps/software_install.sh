# install software
source $HOME/.macbootstrap/basic.sh

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
ln -s ~/.macbootstrap/config/Dracula.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/Dracula.xccolortheme

if [[ ! -e /Applications/iTerm.app ]]; then
    brew cask install iterm2
else
    echo "You have installed iTerm2"
fi

if [[ ! -e /Applications/fork.app ]]; then
    brew cask install fork
else
    echo "You have installed fork"
fi

if [[ ! -e /Applications/WeChat.app ]]; then
    brew cask install wechat
else
    echo "You have installed WeChat"
fi

if [[ ! -e /Applications/qq.app ]]; then
    brew cask install qq
else
    echo "You have installed qq"
fi

if [[ ! -e /Applications/Google\ Chrome.app ]]; then
    brew cask install google-chrome
    # Set Chrome as default browser
    git clone https://github.com/kerma/defaultbrowser ./tools/defaultbrowser
    (cd ./tools/defaultbrowser && make && make install)
    defaultbrowser chrome
    [[ -d ./tools/defaultbrowser ]] && rm -rf ./tools/defaultbrowser
else
    echo "You have installed chrome"
fi

if [[ ! -e /Applications/Visual\ Studio\ Code.app ]]; then
    brew cask install visual-studio-code
else
    echo "You have installed vscode"
fi


# motrix
if [[ -e /Applications/Motrix.app ]]; then
    echo "You have installed Motrix"
else
    brew cask install motrix
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

# vlc 播放器
if [[ ! -e /Applications/vlc.app ]]; then
    brew cask install vlc
else
    echo "You have installed vlc"
fi

# Fliqlo 屏保
if [[ ! -e /Applications/Fliqlo.app ]]; then
    brew cask install fliqlo
else
    echo "You have installed fliqlo"
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

# sketch
if [[ ! -e /Applications/sketch.app ]]; then
    brew cask install sketch
else
    echo "You have installed sketch"
fi

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

brew cask install sogouinput
sogou_base="/usr/local/Caskroom/sogouinput"
sogou_version="$sogou_base/"`ls "$sogou_base"`
sogou_app="$sogou_version/"`ls $sogou_version | grep .app | tail -n 1`
open "$sogou_app"
sh ~/.macbootstrap/install-steps/sogou_sync.sh

# brew cask install proxifier
# open /Applications/Proxifier.app
# defaults write com.initex.proxifier.macosx.plist LicenseOwner -string "bestswifter"
# defaults write com.initex.proxifier.macosx.plist LicenseKey -string "P427L-9Y552-5433E-8DSR3-58Z68"

# Install Charles
# if [[ -e /Applications/Charles.app ]]; then
#     echo "You have installed charles"
# else
#     brew cask install charles
# fi
