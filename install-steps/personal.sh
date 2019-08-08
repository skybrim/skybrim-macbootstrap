username='wiley'

# Write script you want to use in the `if` block
if [[ "$username" == $(whoami) ]]; then
    # HomeBrew
    # brew cask install google-drive-file-stream

    # Git config
    git config --global user.name skybrim
    git config --global user.email throughskybrim@gmail.com

    if [[ ! -d $HOME/.ssh ]]; then
        mkdir $HOME/.ssh
    fi

    # GPG_KEY
    # GPG_KEY="$HOME/.macbootstrap/git-config/bestswifter.asc"
    # gpg --import "$GPG_KEY"
    # shred --remove "$GPG_KEY"
    # git config --global user.signingkey 368B0D29D38D4B4EEE5BF51EB2468CF4358BF1CF
    # git config --global commit.gpgsign true

fi
