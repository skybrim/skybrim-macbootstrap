#!/bin/sh

source ~/.macbootstrap/mac/change_ctrl_caps.sh
hhkb_opt_cmd

launchctl stop /Library/LaunchAgents/com.lvmagent.screen.plist
launchctl unload /Library/LaunchAgents/com.lvmagent.screen.plist