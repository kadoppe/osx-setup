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
  ctags
  homebrew/dupes/apple-gcc42
  php56
  homebrew/php/wp-cli
  homebrew/versions/maven2
  htop
  imagemagick
  mackup
  mysql
  nodebrew
  postgresql
  rbenv
  rsense
  reattach-to-user-namespace
  ruby-build
  solr
  sonar
  the_silver_searcher
  tmux
  tmux-mem-cpu-load
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
  coteditor
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
  origin
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
