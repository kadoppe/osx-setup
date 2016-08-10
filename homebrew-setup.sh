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
brew tap peco/peco

binaries=(
  ansible
  awscli
  composer
  coreutils
  ctags
  elixir
  gifsicle
  gradle
  heroku-toolbelt
  httpd22
  apple-gcc42
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
  kindle
  kitematic
  macvim-kaoriya
  maczip4win
  minecraft
  mobile-mouse-server
  mysqlworkbench
  omnigraffle-professional5
  onyx
  origin
  owncloud
  pg-commander
  phpstorm
  sequel-pro
  sketch
  skitch
  skype
  slack
  soundflower
  steam
  sts
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
