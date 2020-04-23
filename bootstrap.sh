#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "You have installed brew"
fi

# 替换brew.git:
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git

# 替换homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

# 替换homebrew-cask.git:
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git

# install lastest git
brew install git

cd ~
# git clone
git clone --depth=1 -b ${BRANCH} https://github.com/skybrim/skybrim-macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap

# start
sh main.sh
