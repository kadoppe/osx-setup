#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

binaries=(
  caskroom/cask/brew-cask
  coreutils
  homebrew/dupes/apple-gcc42
  htop
  homebrew/versions/maven2
  imagemagick
  mackup
  mysql
  nodebrew
  postgresql
  rbenv
  reattach-to-user-namespace
  ruby-build
  sonar
  solr
  the_silver_searcher
  tmux
  typesafe-activator
  z
  zsh
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  alfred
  adobe-creative-cloud
  bartender
  bathyscaphe
  caffeine
  caskroom/homebrew-versions/macvim-kaoriya
  cyberduck
  dropbox
  eclipse-java
  evernote
  firefox-ja
  firefoxdeveloperedition-ja
  flip4mac
  flux
  google-chrome
  google-japanese-ime
  gyazo
  iterm2
  intellij-idea
  java
  minecraft
  onepassword
  owncloud
  pg-commander
  sequel-pro
  skitch
  skype
  slack
  soundflower
  steam
  virtualbox
  vivaldi
  vagrant
  vlc
  wineskin-winery
  xtrafinder
)

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup
