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

if [[ ! -e /Applications/Firefox.app ]]; then
    echo ">>>>>>>>>> brew  install Firefox <<<<<<<<<<"
    brew  install Firefox
else
    echo "You have installed Firefox"
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

if [[ ! -e /Applications/Notion.app ]]; then
    echo ">>>>>>>>>> brew  install Notion <<<<<<<<<<"
    brew  install notion
else
    echo "You have installed notion"
fi

# Dash 文档
if [[ ! -e /Applications/Dash.app ]]; then
    echo ">>>>>>>>>> brew  install dash <<<<<<<<<<"
    brew  install --cask dash
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

echo ">>>>>>>>>> brew  install sogouinput <<<<<<<<<<"
brew  install sogouinput
# sogou_base="/usr/local/room/sogouinput"
# sogou_version="$sogou_base/"`ls "$sogou_base"`
# sogou_app="$sogou_version/"`ls $sogou_version | grep .app | tail -n 1`
# open "$sogou_app"
# sh ~/.macbootstrap/install-steps/sogou_sync.sh

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

# echo ">>>>>>>>>> brew tap homebrew/-fonts <<<<<<<<<<"
# brew tap homebrew/-fonts
# brew  install font-hack-nerd-font