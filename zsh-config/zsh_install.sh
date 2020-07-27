source $HOME/.macbootstrap/basic.sh

if [[ ! -e ~/.oh-my-zsh ]]; then
    echo ">>>>>>>>>> oh-my-zsh download <<<<<<<<<<"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# zshrc setup
echo ">>>>>>>>>> .zshrc replace <<<<<<<<<<"
rm -rf ~/.zshrc
ln -s ~/.macbootstrap/zsh-config/.zshrc ~/.zshrc

echo ">>>>>>>>>> oh-my-zsh theme spaceship-prompt <<<<<<<<<<"
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt

echo ">>>>>>>>>> oh-my-zsh plugins zsh-syntax-highlighting <<<<<<<<<<"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo ">>>>>>>>>> oh-my-zsh plugins zsh-autosuggestions <<<<<<<<<<"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

rm -rf ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
