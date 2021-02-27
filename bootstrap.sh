#!bin/sh

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
  # hosts 中添加 raw.githubusercontent.com，防止 DNS 污染
  sudo -- sh -c "echo 199.232.68.133 raw.githubusercontent.com >> /etc/hosts"
  sudo -- sh -c "echo 199.232.68.133 camo.githubusercontent.com >> /etc/hosts"
  sudo -- sh -c "echo 199.232.68.133 cloud.githubusercontent.com >> /etc/hosts"
  # 安装 homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo ">>>>>>>>>> You have installed brew <<<<<<<<<<"
fi

# start
echo ">>>>>>>>>> start <<<<<<<<<<"
cd ~
sh start.sh
