#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

if [[ ! -e /usr/local/bin/brew ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "You have installed brew"
fi

brew install git

git clone --depth=1 -b ${BRANCH} https://github.com/skybrim/skybrim-macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap
bash install.sh
