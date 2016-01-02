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
  caskroom/fonts
  caskroom/homebrew-versions
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
  elixir
  gifsicle
  heroku-toolbelt
  httpd22
  apple-gcc42
  wp-cli
  maven2
  htop
  hub
  hugo
  imagemagick
  jq
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
  solr
  sonar
  ssh-copy-id
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

apps=(
  alfred
  anki
  appcleaner
  atom
  bartender
  bathyscaphe
  boot2docker
  caffeine
  coteditor
  clipy
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
  maczip4win
  minecraft
  mobile-mouse-server
  omnigraffle-professional5
  onyx
  origin
  pg-commander
  sequel-pro
  sketch
  skitch
  skype
  slack
  soundflower
  steam
  sqlitebrowser
  textexpander
  the-unarchiver
  vagrant
  virtualbox
  vlc
)

echo "Updating existing binaries"
brew cask update

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup
brew cask cleanup
