# install software
source $HOME/.macbootstrap/basic.sh

if [[ ! -e /Applications/iTerm.app ]]; then
    echo ">>>>>>>>>> brew  install iterm2 <<<<<<<<<<"
    brew  install iterm2
else
    echo "You have installed iTerm2"
fi

if [[ ! -e /Applications/WeChat.app ]]; then
    echo ">>>>>>>>>> brew  install wechat <<<<<<<<<<"
    brew  install wechat
else
    echo "You have installed WeChat"
fi

if [[ ! -e /Applications/qq.app ]]; then
    echo ">>>>>>>>>> brew  install qq <<<<<<<<<<"
    brew  install qq
else
    echo "You have installed qq"
fi

if [[ ! -e /Applications/Google\ Chrome.app ]]; then
    echo ">>>>>>>>>> brew  install google-chrome <<<<<<<<<<"
    brew  install google-chrome
    # Set Chrome as default browser
#     git clone https://github.com/kerma/defaultbrowser ./tools/defaultbrowser
#     (cd ./tools/defaultbrowser && make && make install)
#     defaultbrowser chrome
#     [[ -d ./tools/defaultbrowser ]] && rm -rf ./tools/defaultbrowser
else
    echo "You have installed chrome"
fi

# fork
if [[ ! -e /Applications/fork.app ]]; then
    echo ">>>>>>>>>> brew  install fork <<<<<<<<<<"
    brew  install fork
else
    echo "You have installed fork"
fi

# Xversion
if [[ ! -e /Applications/xversion.app ]]; then
    echo ">>>>>>>>>> brew  install Xversion <<<<<<<<<<"
    ln -s ~/.macbootstrap/install-steps/homebrew__rb/xversion.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-/s/xversion.rb
    brew  install xversion
else
    echo "You have installed xversion"
fi

# VSCode
if [[ ! -e /Applications/Visual\ Studio\ Code.app ]]; then
    echo ">>>>>>>>>> brew  install visual-studio-code <<<<<<<<<<"
    brew  install visual-studio-code
else
    echo "You have installed vscode"
fi

if [[ ! -e /Applications/CodeRunner.app ]]; then
    echo ">>>>>>>>>> brew  install coderunner <<<<<<<<<<"
    brew  install coderunner
else
    echo "You have installed coderunner"
fi

if [[ ! -e /Applications/Notion.app ]]; then
    echo ">>>>>>>>>> brew  install Notion <<<<<<<<<<"
    brew  install notion
else
    echo "You have installed notion"
fi

# Dash 文档
if [[ ! -e /Applications/Dash.app ]]; then
    echo ">>>>>>>>>> brew  install dash <<<<<<<<<<"
    brew  install dash
else
    echo "You have installed dash"
fi

# alfred 管家工具
if [[ ! -e /Applications/alfred\ 4.app ]]; then
    echo ">>>>>>>>>> brew  install alfred <<<<<<<<<<"
    brew  install alfred
else
    echo "You have installed alfred 4"
fi

# IINA 播放器
if [[ ! -e /Applications/IINA.app ]]; then
    echo ">>>>>>>>>> brew  install iina <<<<<<<<<<"
    brew  install iina
else
    echo "You have installed IINA"
fi

# Fliqlo 屏保
if [[ ! -e /Applications/Fliqlo.app ]]; then
    echo ">>>>>>>>>> brew  install fliqlo <<<<<<<<<<"
    brew  install fliqlo
else
    echo "You have installed fliqlo"
fi

# tableplus
if [[ ! -e /Applications/tableplus.app ]]; then
    echo ">>>>>>>>>> brew  install tableplus <<<<<<<<<<"
    brew  install tableplus
else
    echo "You have installed tableplus"
fi

# stats
if [[ ! -e /Applications/Stats.app ]]; then
    echo ">>>>>>>>>> brew  install stats <<<<<<<<<<"
    brew  install stats
else
    echo "You have installed stats"
fi

# dozer
if [[ ! -e /Applications/Dozer.app ]]; then
    echo ">>>>>>>>>> brew  install dozer <<<<<<<<<<"
    brew  install dozer
else
    echo "You have installed dozer"
fi

echo ">>>>>>>>>> brew  install chromedriver <<<<<<<<<<"
brew  install chromedriver

# pusher 推送测试工具
if [[ ! -e /Applications/pusher.app ]]; then
    echo ">>>>>>>>>> brew  install pusher <<<<<<<<<<"
    brew  install pusher
else
    echo "You have installed pusher"
fi

# cheatsheet
if [[ ! -e /Applications/cheatsheet.app ]]; then
    echo ">>>>>>>>>> brew  install cheatsheet <<<<<<<<<<"
    brew  install cheatsheet
else
    echo "You have installed cheatsheet"
fi

echo ">>>>>>>>>> brew tap homebrew/-fonts <<<<<<<<<<"
brew tap homebrew/-fonts
brew  install font-hack-nerd-font

echo ">>>>>>>>>> brew  install sogouinput <<<<<<<<<<"
brew  install sogouinput
sogou_base="/usr/local/room/sogouinput"
sogou_version="$sogou_base/"`ls "$sogou_base"`
sogou_app="$sogou_version/"`ls $sogou_version | grep .app | tail -n 1`
open "$sogou_app"
sh ~/.macbootstrap/install-steps/sogou_sync.sh

# picgo 上传图片
if [[ ! -e /Applications/picgo.app ]]; then
    echo ">>>>>>>>>> brew  install picgo <<<<<<<<<<"
    brew  install picgo
else
    echo "You have installed picgo"
fi

if [[ ! -e /Applications/The\ Unarchiver.app ]]; then
    echo ">>>>>>>>>> brew  install the-unarchiver <<<<<<<<<<"
    brew  install the-unarchiver
else
    echo "You have installed the-unarchiver"
fi

# stretchly 定时休息提醒
 if [[ ! -e /Applications/stretchly.app ]]; then
     echo ">>>>>>>>>> brew  install stretchly <<<<<<<<<<"
     brew  install stretchly
 else
     echo "You have installed stretchly"
 fi

# calibre 电子书工具
# if [[ ! -e /Applications/calibre.app ]]; then
#     echo ">>>>>>>>>> brew  install calibre <<<<<<<<<<"
#     brew  install calibre
# else
#     echo "You have installed calibre"
# fi

# balenaetcher 烧录工具
# if [[ ! -e /Applications/balenaetcher.app ]]; then
#     echo ">>>>>>>>>> brew  install balenaetcher <<<<<<<<<<"
#     brew  install balenaetcher
# else
#     echo "You have installed balenaetcher"
# fi

# motrix
# if [[ ! -e /Applications/Motrix.app ]]; then
#     echo ">>>>>>>>>> brew  install motrix <<<<<<<<<<"
#     brew  install motrix
# else
#     echo "You have installed Motrix"
# fi

# spectacle
# if [[ ! -e /Applications/Spectacle.app ]]; then
#     echo ">>>>>>>>>> brew  install spectacle <<<<<<<<<<"
#     brew  install spectacle
# else
#     echo "You have installed spectacle"
# fi


# Install Charles
# if [[ -e /Applications/Charles.app ]]; then
#     echo "You have installed charles"
# else
#     brew  install charles
# fi

