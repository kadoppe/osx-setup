#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

taps=(
  caskroom/cask
  homebrew/apache
  homebrew/dupes
  homebrew/php
  homebrew/versions
  peco/peco
)
brew tap ${taps[@]}

binaries=(
  ansible
  brew-cask
  composer
  coreutils
  ctags
  gifsicle
  heroku-toolbelt
  httpd22
  apple-gcc42
  wp-cli
  maven2
  htop
  hub
  imagemagick
  mackup
  mongodb
  mysql
  nkf
  nodebrew
  postgresql
  rbenv
  redis
  rsense
  reattach-to-user-namespace
  ruby-build
  rbenv-gem-rehash
  solr
  sonar
  the_silver_searcher
  tmux
  tmux-mem-cpu-load
  tree
  typesafe-activator
  zsh
  gibo
  peco
)

echo "Installing binaries..."
brew install ${binaries[@]}

brew install php53 --homebrew-apxs
brew install php54

brew tap caskroom/fonts
brew tap caskroom/homebrew-versions

apps=(
  airmail-beta
  alfred
  anki
  bartender
  bathyscaphe
  boot2docker
  caffeine
  cheatsheet
  coteditor
  cyberduck
  dropbox
  eclipse-java
  evernote
  firefox-ja
  firefoxdeveloperedition-ja
  flip4mac
  flux
  font-fontawesome
  google-chrome
  google-japanese-ime
  gyazo
  hosts
  intellij-idea
  iterm2
  java
  karabiner
  keyboard-cleaner
  kitematic
  macvim-kaoriya
  minecraft
  omnigraffle-professional5
  onepassword
  origin
  owncloud
  pg-commander
  rescuetime
  sequel-pro
  sketch
  skitch
  skype
  slack
  soundflower
  steam
  vagrant
  virtualbox
  vivaldi
  vlc
  wineskin-winery
  xtrafinder
)

echo "Updating existing binaries"
brew cask update

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup
brew cask cleanup
