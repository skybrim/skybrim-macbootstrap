if [[ ! -d $HOME/Library/LaunchAgents ]]; then
    mkdir $HOME/Library/LaunchAgents
fi

sudo cp ~/.macbootstrap/config/com.bestswifter.onlogin.plist ~/Library/LaunchAgents/
sudo launchctl load ~/Library/LaunchAgents/com.bestswifter.onlogin.plist
