# install software
source $HOME/.macbootstrap/basic.sh

if [[ ! -e /Applications/iTerm.app ]]; then
    echo ">>>>>>>>>> brew cask install iterm2 <<<<<<<<<<"
    brew cask install iterm2
else
    echo "You have installed iTerm2"
fi

if [[ ! -e /Applications/WeChat.app ]]; then
    echo ">>>>>>>>>> brew cask install wechat <<<<<<<<<<"
    brew cask install wechat
else
    echo "You have installed WeChat"
fi

if [[ ! -e /Applications/qq.app ]]; then
    echo ">>>>>>>>>> brew cask install qq <<<<<<<<<<"
    brew cask install qq
else
    echo "You have installed qq"
fi

if [[ ! -e /Applications/Google\ Chrome.app ]]; then
    echo ">>>>>>>>>> brew cask install google-chrome <<<<<<<<<<"
    brew cask install google-chrome
    # Set Chrome as default browser
    git clone https://github.com/kerma/defaultbrowser ./tools/defaultbrowser
    (cd ./tools/defaultbrowser && make && make install)
    defaultbrowser chrome
    [[ -d ./tools/defaultbrowser ]] && rm -rf ./tools/defaultbrowser
else
    echo "You have installed chrome"
fi

# fork
if [[ ! -e /Applications/fork.app ]]; then
    echo ">>>>>>>>>> brew cask install fork <<<<<<<<<<"
    brew cask install fork
else
    echo "You have installed fork"
fi

# Xversion
if [[ ! -e /Applications/xversion.app ]]; then
    echo ">>>>>>>>>> brew cask install Xversion <<<<<<<<<<"
    ln -s ~/.macbootstrap/install-steps/homebrew_cask_rb/xversion.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/xversion.rb
    brew cask install xversion
else
    echo "You have installed xversion"
fi

# VSCode
if [[ ! -e /Applications/Visual\ Studio\ Code.app ]]; then
    echo ">>>>>>>>>> brew cask install visual-studio-code <<<<<<<<<<"
    brew cask install visual-studio-code
else
    echo "You have installed vscode"
fi

if [[ ! -e /Applications/CodeRunner.app ]]; then
    echo ">>>>>>>>>> brew cask install coderunner <<<<<<<<<<"
    brew cask install coderunner
else
    echo "You have installed coderunner"
fi

if [[ ! -e /Applications/Notion.app ]]; then
    echo ">>>>>>>>>> brew cask install Notion <<<<<<<<<<"
    brew cask install notion
else
    echo "You have installed notion"
fi

# Dash 文档
if [[ ! -e /Applications/Dash.app ]]; then
    echo ">>>>>>>>>> brew cask install dash <<<<<<<<<<"
    brew cask install dash
else
    echo "You have installed dash"
fi

# alfred 管家工具
if [[ ! -e /Applications/alfred\ 4.app ]]; then
    echo ">>>>>>>>>> brew cask install alfred <<<<<<<<<<"
    brew cask install alfred
else
    echo "You have installed alfred 4"
fi

# IINA 播放器
if [[ ! -e /Applications/IINA.app ]]; then
    echo ">>>>>>>>>> brew cask install iina <<<<<<<<<<"
    brew cask install iina
else
    echo "You have installed IINA"
fi

# Fliqlo 屏保
if [[ ! -e /Applications/Fliqlo.app ]]; then
    echo ">>>>>>>>>> brew cask install fliqlo <<<<<<<<<<"
    brew cask install fliqlo
else
    echo "You have installed fliqlo"
fi

# tableplus
if [[ ! -e /Applications/tableplus.app ]]; then
    echo ">>>>>>>>>> brew cask install tableplus <<<<<<<<<<"
    brew cask install tableplus
else
    echo "You have installed tableplus"
fi

# stats
if [[ ! -e /Applications/Stats.app ]]; then
    echo ">>>>>>>>>> brew cask install stats <<<<<<<<<<"
    brew cask install stats
else
    echo "You have installed stats"
fi

# dozer
if [[ ! -e /Applications/Dozer.app ]]; then
    echo ">>>>>>>>>> brew cask install dozer <<<<<<<<<<"
    brew cask install dozer
else
    echo "You have installed dozer"
fi

echo ">>>>>>>>>> brew cask install chromedriver <<<<<<<<<<"
brew cask install chromedriver

# pusher 推送测试工具
if [[ ! -e /Applications/pusher.app ]]; then
    echo ">>>>>>>>>> brew cask install pusher <<<<<<<<<<"
    brew cask install pusher
else
    echo "You have installed pusher"
fi

# cheatsheet
if [[ ! -e /Applications/cheatsheet.app ]]; then
    echo ">>>>>>>>>> brew cask install cheatsheet <<<<<<<<<<"
    brew cask install cheatsheet
else
    echo "You have installed cheatsheet"
fi

echo ">>>>>>>>>> brew tap homebrew/cask-fonts <<<<<<<<<<"
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

echo ">>>>>>>>>> brew cask install sogouinput <<<<<<<<<<"
brew cask install sogouinput
sogou_base="/usr/local/Caskroom/sogouinput"
sogou_version="$sogou_base/"`ls "$sogou_base"`
sogou_app="$sogou_version/"`ls $sogou_version | grep .app | tail -n 1`
open "$sogou_app"
sh ~/.macbootstrap/install-steps/sogou_sync.sh

# picgo 上传图片
if [[ ! -e /Applications/picgo.app ]]; then
    echo ">>>>>>>>>> brew cask install picgo <<<<<<<<<<"
    brew cask install picgo
else
    echo "You have installed picgo"
fi

if [[ ! -e /Applications/The\ Unarchiver.app ]]; then
    echo ">>>>>>>>>> brew cask install the-unarchiver <<<<<<<<<<"
    brew cask install the-unarchiver
else
    echo "You have installed the-unarchiver"
fi

brew cask install the-unarchiver

# calibre 电子书工具
# if [[ ! -e /Applications/calibre.app ]]; then
#     echo ">>>>>>>>>> brew cask install calibre <<<<<<<<<<"
#     brew cask install calibre
# else
#     echo "You have installed calibre"
# fi

# balenaetcher 烧录工具
# if [[ ! -e /Applications/balenaetcher.app ]]; then
#     echo ">>>>>>>>>> brew cask install balenaetcher <<<<<<<<<<"
#     brew cask install balenaetcher
# else
#     echo "You have installed balenaetcher"
# fi

# motrix
# if [[ ! -e /Applications/Motrix.app ]]; then
#     echo ">>>>>>>>>> brew cask install motrix <<<<<<<<<<"
#     brew cask install motrix
# else
#     echo "You have installed Motrix"
# fi

# spectacle
# if [[ ! -e /Applications/Spectacle.app ]]; then
#     echo ">>>>>>>>>> brew cask install spectacle <<<<<<<<<<"
#     brew cask install spectacle
# else
#     echo "You have installed spectacle"
# fi

# stretchly 定时休息提醒
# if [[ ! -e /Applications/stretchly.app ]]; then
#     echo ">>>>>>>>>> brew cask install stretchly <<<<<<<<<<"
#     brew cask install stretchly
# else
#     echo "You have installed stretchly"
# fi

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

# if [[ ! -e /Applications/karabiner-elements.app ]]; then
#     echo ">>>>>>>>>> brew cask install karabiner-elements <<<<<<<<<<"
#     brew cask install karabiner-elements
# else
#     echo "You have installed karabiner-elements"
# fi

# sketch
# if [[ ! -e /Applications/sketch.app ]]; then
#     echo ">>>>>>>>>> brew cask install sketch <<<<<<<<<<"
#     brew cask install sketch
# else
#     echo "You have installed sketch"
# fi

# robo-3t
# if [[ ! -e /Applications/Robo\ 3T.app ]]; then
#     echo ">>>>>>>>>> brew cask install robo-3t <<<<<<<<<<"
#     brew cask install robo-3t
# else
#     echo "You have installed robo-3t"
# fi