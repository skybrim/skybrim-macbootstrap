if [[ ! -d $HOME/Library/LaunchAgents ]]; then
    mkdir $HOME/Library/LaunchAgents
fi

cp ~/.macbootstrap/mac/com.wiley.onlogin.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/com.wiley.onlogin.plist