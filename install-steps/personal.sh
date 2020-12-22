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