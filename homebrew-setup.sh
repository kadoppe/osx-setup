#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/apache
brew tap homebrew/dupes
brew tap homebrew/php
brew tap homebrew/versions
brew tap osx-cross/avr

binaries=(
  ansible
  avr-libc
  awscli
  composer
  coreutils
  ctags
  dfu-programmer
  elixir
  gifsicle
  gradle
  heroku-toolbelt
  wp-cli
  htop-osx
  hub
  hugo
  imagemagick
  jq
  mackup
  mongodb
  mysql
  nginx
  nkf
  nodebrew
  oath-toolkit
  postgresql
  pyenv
  pyenv-virtualenv
  rbenv
  redis
  rsense
  reattach-to-user-namespace
  ruby-build
  solr
  sonar
  sonar-runner
  ssh-copy-id
  teensy_loader_cli
  terraform
  the_silver_searcher
  tmux
  tmux-mem-cpu-load
  tree
  typesafe-activator
  watchman
  zsh
  gibo
  peco
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  alfred
  anki
  android-studio
  appcleaner
  atom
  audacity
  bartender
  bathyscaphe
  caffeine
  coteditor
  cyberduck
  daisydisk
  dungeon-crawl-stone-soup-tiles
  dropbox
  evernote
  firefox-ja
  firefoxdeveloperedition-ja
  flip4mac
  fman
  flux
  font-fontawesome
  gitter
  google-chrome
  google-japanese-ime
  gyazo
  hosts
  intellij-idea
  iterm2
  java
  karabiner
  keyboard-cleaner
  kindle
  kitematic
  macvim-kaoriya
  maczip4win
  minecraft
  mobile-mouse-server
  mysqlworkbench
  omnigraffle-professional5
  onyx
  owncloud
  path-finder
  pg-commander
  phpstorm
  seil
  sequel-pro
  sketch
  skitch
  skype
  soundflower
  steam
  sts
  spotify
  sqlitebrowser
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
