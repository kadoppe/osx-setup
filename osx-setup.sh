#!/usr/bin/env bash

# https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# disable accent menu
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.spaces "spans-displays" -bool "true" && killall SystemUIServer
defaults write com.apple.dock "expose-group-apps" -bool "true" && killall Dock
