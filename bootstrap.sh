#!bin/sh

if grep "github" /etc/hosts > /dev/null; then
  echo ">>>>>>>>>> You have fixed hosts <<<<<<<<<<"
else
  # hosts 中添加 raw.githubusercontent.com，防止 DNS 污染
  sudo -- sh -c "echo 199.232.68.133 raw.githubusercontent.com >> /etc/hosts"
  sudo -- sh -c "echo 199.232.68.133 camo.githubusercontent.com >> /etc/hosts"
  sudo -- sh -c "echo 199.232.68.133 cloud.githubusercontent.com >> /etc/hosts"
fi

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
  # 安装 homebrew
  export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
  export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
  export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
  /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@HEAD/install.sh)"
	unset HOMEBREW_BREW_GIT_REMOTE
	unset HOMEBREW_CORE_GIT_REMOTE
	unset HOMEBREW_BOTTLE_DOMAIN
else
  echo ">>>>>>>>>> You have installed brew <<<<<<<<<<"
fi

# start
echo ">>>>>>>>>> start <<<<<<<<<<"
cd ~/.macbootstrap
sh start.sh
