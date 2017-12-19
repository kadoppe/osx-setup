#!/usr/bin/env bash

# https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# hostname
sudo scutil --set ComputerName 'kadoppe-mbp.local'
sudo scutil --set HostName 'kadoppe-mbp.local'

# trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock tilesize -int 36

# mission control
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 0

# screen
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# screenshot
defaults write com.apple.screencapture disable-shadow -boolean true
