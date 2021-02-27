#!/bin/sh

# Disable guest account
# sudo sh ~/.macbootstrap/mac-config/guest_account.sh disable

# keyboard setting
# Use F1-F12 as standard function keys
defaults write -globalDomain com.apple.keyboard.fnState -int 1
# Enable full keyboard access for all controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# dock setting
# https://developer.apple.com/documentation/devicemanagement/dock
# Auto hide and show Dock
defaults write com.apple.dock autohide true
defaults write com.apple.dock autohide-time-modifier 0
# Hide some app icons in Dock 
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
# make dock lays left
defaults write com.apple.dock orientation left
defaults write com.apple.dock show-recents false
# Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Always Show Scroll Bars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Expand Save Panels by Default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Optimize window resize speed
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Always show filename extension
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Skip image verify
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Config Finder
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.finder QLEnableTextSelection -boolean true;
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -boolean false;
defaults write com.apple.finder ShowRemovableMediaOnDesktop -boolean false;
defaults write com.apple.finder FXEnableExtensionChangeWarning -boolean false;

# Enable clickpad Tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
[ -e ~/Library/Application\ Support/Dock/*.db ] && rm ~/Library/Application\ Support/Dock/*.db

# Enable three finger to drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# Show the ~/Library Directory
chflags nohidden ~/Library

# Hide Siri Icon in menu bar
cp ~/.macbootstrap/mac-config/com.apple.Siri.plist ~/Library/Preferences/

# Hide input source Icon in menu bar
# cp ~/.macbootstrap/mac-config/com.apple.systemuiserver.plist ~/Library/Preferences/

# Remove airplay icon in menubar
defaults write com.apple.airplay showInMenuBarIfPresent -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable app verifying
sudo spctl --master-disable
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable auto correct
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Allow full screen mode of simulator
defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES

# Make configurations works
echo "Restart Finder Dock Mail SystemUIServer"
killall Finder
killall Dock
killall Mail
killall SystemUIServer