#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
  # hosts 中添加 raw.githubusercontent.com，防止 DNS 污染
  sudo -- sh -c "echo 199.232.68.133 raw.githubusercontent.com >> /etc/hosts"
  sudo -- sh -c "echo 199.232.68.133 camo.githubusercontent.com >> /etc/hosts"
  sudo -- sh -c "echo 199.232.68.133 cloud.githubusercontent.com >> /etc/hosts"
  # 安装 homebrew
  /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
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
