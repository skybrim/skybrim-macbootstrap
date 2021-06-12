#!/bin/sh

source $HOME/.macbootstrap/mac/change_ctrl_caps.sh
hhkb_opt_cmd

launchctl unload /Library/LaunchAgents/com.lvmagent.screen.plist
launchctl stop /Library/LaunchAgents/com.lvmagent.screen.plist
kill $(pgrep dvc-screen-exe)
