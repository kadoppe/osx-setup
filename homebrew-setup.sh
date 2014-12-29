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
  z
  zsh
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  alfred
  adobe-creative-cloud
  bartender
  caffeine
  caskroom/homebrew-versions/macvim-kaoriya
  cyberduck
  dropbox
  firefox
  flip4mac
  flux
  google-chrome
  google-japanese-ime
  gyazo
  iterm2
  java
  minecraft
  onepassword
  owncloud
  pg-commander
  skitch
  skype
  slack
  soundflower
  steam
  virtualbox
  vagrant
  vlc
  wineskin-winery
  xtrafinder
)

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup
