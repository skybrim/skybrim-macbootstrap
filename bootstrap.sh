#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo ">>>>>>>>>> You have installed brew <<<<<<<<<<"
fi

# install lastest git
echo ">>>>>>>>>> brew install git <<<<<<<<<<"
brew install git

cd ~
# git clone
echo ">>>>>>>>>> clone macbootstrap <<<<<<<<<<"
git clone https://github.com/skybrim/skybrim-macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap

# start
echo ">>>>>>>>>> main.sh run <<<<<<<<<<"
sh main.sh
