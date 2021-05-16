if [[ ! -d $HOME/Library/LaunchAgents ]]; then
    mkdir $HOME/Library/LaunchAgents
fi

sudo cp ~/.macbootstrap/mac/com.wiley.onlogin.plist ~/Library/LaunchAgents/
sudo launchctl load -w ~/Library/LaunchAgents/com.wiley.onlogin.plist