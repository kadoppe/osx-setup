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
brew tap homebrew/php
brew tap sanemat/font
brew tap cloudfoundry/tap

brew cask install java

binaries=(
  ansible
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
  mas
  mackup
  mongodb
  mysql
  nginx
  nkf
  nodebrew
  oath-toolkit
  postgresql
  redis
  reattach-to-user-namespace
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
  avira-antivirus
  appcleaner
  atom
  bartender
  bathyscaphe
  brave
  caffeine
  caprine
  coteditor
  cyberduck
  daisydisk
  dropbox
  duet
  firefox
  flip4mac
  fman
  flux
  font-fontawesome
  font-ricty-diminished
  gitter
  google-chrome
  gyazo
  hosts
  intellij-idea
  istat-menus
  iterm2
  java
  keyboard-cleaner
  karabiner-elements
  kindle
  kitematic
  maczip4win
  minecraft
  mongodb-compass
  mysqlworkbench
  onyx
  owncloud
  path-finder
  pg-commander
  phpstorm
  pomodone
  rescuetime
  station
  sequel-pro
  sketch
  skitch
  skype
  soundflower
  studio-3t
  spotify
  the-unarchiver
  totalspaces
  tower
  vagrant
  virtualbox
  visual-studio-code
  vlc
  webstorm
)

brew install ricty --with-powerline

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Installing store apps..."
storeapps=(
  409737246 # DoublePane
  485812721 # TweetDeck by Twitter
  539883307 # LINE
  585829637 # Todoist
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
brew cask cleanup
