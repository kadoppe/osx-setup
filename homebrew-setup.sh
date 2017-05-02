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
brew tap sanemat/font
brew tap cloudfoundry/tap

binaries=(
  ansible
  avr-libc
  awscli
  cf-cli
  composer
  coreutils
  ctags
  dfu-programmer
  elixir
  fish
  gifsicle
  ghq
  gpg
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
  reattach-to-user-namespace
  ruby-build
  solr
  sonar
  ssh-copy-id
  teensy_loader_cli
  terraform
  the_silver_searcher
  tmux
  tmux-mem-cpu-load
  tree
  typesafe-activator
  watchman
  wget
  zsh
  gibo
  peco
  yarn
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  alfred
  android-studio
  appcleaner
  atom
  bartender
  bathyscaphe
  caffeine
  coteditor
  cyberduck
  daisydisk
  dropbox
  firefox
  flip4mac
  fman
  flux
  font-fontawesome
  font-ricty-diminished
  gitter
  google-chrome
  google-japanese-ime
  gyazo
  hosts
  intellij-idea
  istat-menus
  iterm2
  java
  keyboard-cleaner
  kindle
  kitematic
  maczip4win
  minecraft
  mobile-mouse-server
  mongodb-compass
  mysqlworkbench
  onyx
  owncloud
  path-finder
  pg-commander
  phpstorm
  pomodone
  rescuetime
  seil
  sequel-pro
  sketch
  skitch
  skype
  soundflower
  steam
  sts
  studio-3t
  spotify
  sqlitebrowser
  the-unarchiver
  toggldesktop
  tower
  vagrant
  virtualbox
  visual-studio-code
  vlc
)

brew install ricty --with-powerline

echo "Updating existing binaries"
brew cask update

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup
brew cask cleanup
