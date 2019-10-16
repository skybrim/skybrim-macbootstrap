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
    sh ~/.macbootstrap/vscode/setup.sh
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
    mv /usr/local/opt/coreutils/libexec/gnubin/ls /usr/local/opt/coreutils/libexec/gnubin/gls
else
    echo "You have installed coreutils"
fi

brew install python3
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install redis
brew_install cmake
brew_install gawk
brew_install autojump
brew_install wget
brew_install exiv2
brew_install ssh-copy-id
brew_install imagemagick
brew_install catimg
brew_install gpg
brew_install icdiff
brew_install scmpuff
brew_install fzf
brew_install fd
brew_install the_silver_searcher
brew_install vim
brew_install hugo
brew_install exiftool
brew_install archey
brew_install ranger
brew_install tree
brew_install neofetch
brew_install git-lfs && git lfs install
$(brew --prefix)/opt/fzf/install --all
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# link git config
mv ~/.gitconfig ~/.gitconfig_backup
backup_file ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitconfig ~/.gitconfig
ln -s ~/.macbootstrap/git-config/.gitattributes ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitignore_global ~/.gitignore_global

if [[ ! -e ~/.oh-my-zsh ]]; then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi

# zshrc setup
backup_file ~/.zshrc
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
ln -s ~/.macbootstrap/zsh-config/.zshrc ~/.zshrc

# vim configuration
backup_file ~/.vimrc
ln -s ~/.macbootstrap/zsh-config/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer --system-libclang

# nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

~/.macbootstrap/install-steps/node_global.sh

# ESLint configuration
backup_file ~/.eslintrc.js
backup_file ~/.eslintrc
ln -s ~/.macbootstrap/.eslintrc.js ~/.eslintrc.js

# Ranger configuration
# if [[ ! -e $HEME/.config/ranger ]]; then
#     mkdir -p $HOME/.config/ranger
# fi
# old_commands_py=$HOME/.config/ranger/commands.py
# old_rc_conf=$HOME/.config/ranger/rc.conf
# backup_file "$old_commands_py"
# backup_file "$old_rc_conf"
# ln -s ~/.macbootstrap/config/ranger/commands.py "$old_commands_py"
# ln -s ~/.macbootstrap/config/ranger/rc.conf "$old_rc_conf"

# install-steps
~/.macbootstrap/install-steps/dependencies.before.sh
~/.macbootstrap/install-steps/dependencies.after.sh

# 取消代理
unset ALL_PROXY
~/.macbootstrap/install-steps/sogou_sync.sh

# Personal
~/.macbootstrap/install-steps/personal.sh

# Xcode font preferences
# ~/Library/Developer/Xcode/UserData/FontAndColorThemes
