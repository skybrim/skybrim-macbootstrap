#!/bin/sh

if [[ ! -e ~/.oh-my-zsh ]]; then
    echo ">>>>>>>>>> oh-my-zsh download <<<<<<<<<<"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# zshrc setup
echo ">>>>>>>>>> .zshrc replace <<<<<<<<<<"
rm -rf ~/.zshrc
ln -s ~/.macbootstrap/zsh/.zshrc ~/.zshrc

echo ">>>>>>>>>> oh-my-zsh plugin zsh-syntax-highlighting <<<<<<<<<<"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo ">>>>>>>>>> oh-my-zsh plugin zsh-autosuggestions <<<<<<<<<<"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo ">>>>>>>>>> oh-my-zsh theme powerlevel10k"
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo ">>>>>>>>>> oh-my-zsh plugin git-open"
git clone https://github.com/paulirish/git-open.git ~/.oh-my-zsh/custom/plugins/git-open
