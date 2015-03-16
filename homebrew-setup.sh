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
  composer
  coreutils
  ctags
  gifsicle
  heroku-toolbelt
  homebrew/apache/httpd22
  homebrew/dupes/apple-gcc42
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
  rbenv-gem-rehash
  solr
  sonar
  the_silver_searcher
  tmux
  tmux-mem-cpu-load
  typesafe-activator
  zsh
  gibo
)

echo "Installing binaries..."
brew install ${binaries[@]}

brew install php54 --homebrew-apxs

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
  macvim-kaoriya
  minecraft
  omnigraffle-professional5
  onepassword
  origin
  owncloud
  pg-commander
  rescuetime
  sequel-pro
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

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup
