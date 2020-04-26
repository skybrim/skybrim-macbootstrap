#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo ">>>>>>>>>> You have installed brew <<<<<<<<<<"
fi

cd ~
# git clone
echo ">>>>>>>>>> clone macbootstrap <<<<<<<<<<"
git clone https://github.com/skybrim/skybrim-macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap

# start
echo ">>>>>>>>>> main.sh run <<<<<<<<<<"
sh main.sh
