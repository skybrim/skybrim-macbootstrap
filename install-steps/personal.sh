source $HOME/.macbootstrap/basic.sh

if [[ ! -e /Applications/CodeRunner.app ]]; then
    echo ">>>>>>>>>> brew  install coderunner <<<<<<<<<<"
    brew  install coderunner
else
    echo "You have installed coderunner"
fi

# IINA 播放器
if [[ ! -e /Applications/IINA.app ]]; then
    echo ">>>>>>>>>> brew  install iina <<<<<<<<<<"
    brew  install iina
else
    echo "You have installed IINA"
fi

# docker
if [[ ! -e /Applications/Docker.app ]]; then
    echo ">>>>>>>>>> brew  install docker <<<<<<<<<<"
    brew  install docker
else
    echo "You have installed docker"
fi

# calibre 电子书工具
if [[ ! -e /Applications/calibre.app ]]; then
    echo ">>>>>>>>>> brew  install calibre <<<<<<<<<<"
    brew  install calibre
else
    echo "You have installed calibre"
fi

# balenaetcher 烧录工具
if [[ ! -e /Applications/balenaetcher.app ]]; then
    echo ">>>>>>>>>> brew  install balenaetcher <<<<<<<<<<"
    brew  install balenaetcher
else
    echo "You have installed balenaetcher"
fi

# chromedriver
echo ">>>>>>>>>> brew  install chromedriver <<<<<<<<<<"
brew  install chromedriver

# weakauras-companion 魔兽世界wa更新
if [[ ! -e /Applications/weakauras\ companion.app ]]; then
    echo ">>>>>>>>>> brew  weakauras-companion <<<<<<<<<<"
    brew install weakauras-companion
else
    echo "You have installed weakauras-companion"
fi

# picgo 上传图片
if [[ ! -e /Applications/picgo.app ]]; then
    echo ">>>>>>>>>> brew  install picgo <<<<<<<<<<"
    brew  install picgo
else
    echo "You have installed picgo"
fi