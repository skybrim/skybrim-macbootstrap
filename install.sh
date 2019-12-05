#!/bin/sh
source $HOME/.macbootstrap/basic.sh

sudo sh ~/.macbootstrap/install-steps/macos.sh

brew tap v2ray/v2ray
brew install v2ray-core

if not_wiley_network; then
ln -s ~/.macbootstrap/tools/config.json /usr/local/etc/v2ray/config.json
brew services start v2ray-core
export ALL_PROXY=socks5://127.0.0.1:10009
sudo apachectl -t
ln -s ~/.macbootstrap/tools/ss.pac /Library/WebServer/Documents/ss.pac
else
    echo "no need to use ss now"
fi

if [[ ! -e /Applications/iTerm.app ]]; then
    brew cask install iterm2
else
    echo "You have installed iTerm2"
fi
# iTerm2 preference json
sudo cp ~/.macbootstrap/config/Skybrim.json ~/Library/ApplicationSupport/iTerm2/DynamicProfiles 

if [[ ! -e /Applications/fork.app ]]; then
    brew cask install fork
else
    echo "You have installed fork"
fi

if [[ ! -e /Applications/WeChat.app ]]; then
    brew cask install wechat
else
    echo "You have installed WeChat"
fi

if [[ ! -e /Applications/qq.app ]]; then
    brew cask install qq
else
    echo "You have installed qq"
fi

if [[ ! -e /Applications/Google\ Chrome.app ]]; then
    brew cask install google-chrome
    # Set Chrome as default browser
    git clone https://github.com/kerma/defaultbrowser ./tools/defaultbrowser
    (cd ./tools/defaultbrowser && make && make install)
    defaultbrowser chrome
    [[ -d ./tools/defaultbrowser ]] && rm -rf ./tools/defaultbrowser
else
    echo "You have installed chrome"
fi

if [[ ! -e /Applications/Visual\ Studio\ Code.app ]]; then
    brew cask install visual-studio-code
else
    echo "You have installed vscode"
fi

if brew ls --versions gnu-sed > /dev/null; then
    echo "You have installed gsed"
else
    brew install gnu-sed
fi

# install sz/rz
if brew ls --versions lrzsz > /dev/null; then
    echo "You have installed lrzsz"
else
    brew install lrzsz
fi

# install coreutils
if [[ ! -e /usr/local/opt/coreutils ]]; then
    brew install coreutils
else
    echo "You have installed coreutils"
fi

brew install python3
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install redis
brew install cmake
brew install gawk
brew install autojump
brew install wget
brew install exiv2
brew install ssh-copy-id
brew install imagemagick
brew install catimg
brew install gpg
brew install icdiff
brew install scmpuff
brew install fzf
brew install fd
brew install the_silver_searcher
brew install vim
brew install exiftool
brew install archey
brew install ranger
brew install neofetch
brew install yasm
brew install git-lfs && git lfs install
$(brew --prefix)/opt/fzf/install --all

# link git config
mv ~/.gitconfig ~/.gitconfig_backup
backup_file ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitconfig ~/.gitconfig
ln -s ~/.macbootstrap/git-config/.gitattributes ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitignore_global ~/.gitignore_global

if [[ ! -e ~/.oh-my-zsh ]]; then
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# zshrc setup
backup_file ~/.zshrc
ln -s ~/.macbootstrap/zsh-config/.zshrc ~/.zshrc
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# vim configuration
backup_file ~/.vimrc
ln -s ~/.macbootstrap/zsh-config/.vimrc ~/.vimrc

# nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

~/.macbootstrap/install-steps/node_global.sh

# install-steps
~/.macbootstrap/install-steps/dependencies.before.sh
~/.macbootstrap/install-steps/dependencies.after.sh

# 取消代理
unset ALL_PROXY
~/.macbootstrap/install-steps/sogou_sync.sh

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Personal
~/.macbootstrap/install-steps/personal.sh

# Xcode font preferences
# ~/Library/Developer/Xcode/UserData/FontAndColorThemes
