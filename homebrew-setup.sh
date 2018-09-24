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
brew tap sanemat/font
brew tap cloudfoundry/tap

brew cask install java

binaries=(
  ansible
  awscli
  cf-cli
  chromedriver
  composer
  coreutils
  ctags
  direnv
  dfu-programmer
  elixir
  fish
  gifsicle
  ghq
  gpg
  gradle
  graphicsmagick
  heroku-toolbelt
  htop-osx
  hub
  hugo
  imagemagick
  jq
  mas
  mackup
  neovim
  nkf
  oath-toolkit
  reattach-to-user-namespace
  ssh-copy-id
  teensy_loader_cli
  terraform
  the_silver_searcher
  tig
  tmux
  tmux-mem-cpu-load
  tree
  typesafe-activator
  watchman
  wget
  zsh
  gibo
  peco
  pyenv
  pyenv-virtualenv
  yarn
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  alfred
  android-file-transfer
  android-platform-tools
  appcleaner
  caffeine
  caprine
  coteditor
  cyberduck
  daisydisk
  dash
  docker-edge
  dropbox
  duet
  fantastical
  firefox
  flip4mac
  fman
  flux
  font-fontawesome
  font-noto-sans-cjk-jp
  font-ricty-diminished
  font-roboto
  font-source-han-sans
  gitter
  google-chrome
  google-japanese-ime
  gyazo
  hosts
  intellij-idea
  istat-menus
  iterm2
  jasper
  java
  keyboard-cleaner
  karabiner-elements
  kindle
  kitematic
  licecap
  maczip4win
  minecraft
  notion
  onyx
  parallels
  postman
  sequel-pro
  sketch
  skitch
  skype
  soundflower
  studio-3t
  spotify
  the-unarchiver
  tower
  vagrant
  virtualbox
  webstorm
)

brew install ricty --with-powerline

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Installing store apps..."
storeapps=(
  1091189122 # Bear
  1176895641 # Spark - Love your email again
  409183694 # Keynote
  441258766 # Magnet
  485812721 # TweetDeck by Twitter
  539883307 # LINE
  585829637 # Todoist
  803453959 # Slack
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
brew cask cleanup
