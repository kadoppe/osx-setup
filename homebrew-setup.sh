#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap sanemat/font
brew tap cloudfoundry/tap

brew install java

binaries=(
  coreutils
  direnv
  exa
  fish
  ffmpeg
  gifsicle
  ghq
  gh
  go
  jq
  lazydocker
  mas
  mkcert
  neovim
  node
  reattach-to-user-namespace
  svn
  terraform
  tmux
  tmuxinator
  wget
  peco
  php
  pyenv
  pyenv-virtualenv
  ripgrep
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  aerial
  android-studio
  around
  bartender
  camo-studio
  choosy
  coteditor
  deepl
  discord
  docker
  dropbox
  fantastical
  figma
  firefox
  flutter
  font-fontawesome
  font-dejavu-sans-mono-nerd-font
  font-noto-sans-cjk-jp
  font-roboto
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  inkdrop
  intellij-idea
  istat-menus
  iterm2
  keyboard-cleaner
  karabiner-elements
  kindle
  krisp
  linear-linear
  loom
  messenger
  microsoft-edge
  ngrok
  notion
  skitch
  steam
  studio-3t
  spotify
  ticktick
  tower
  visual-studio-code
  webstorm
  zoom
)

brew install ricty --with-powerline
cp -f /opt/homebrew/Cellar/ricty/4.1.1/share/fonts/Ricty*.ttf ~/Library/Fonts
fc-cache -vf

echo "Installing apps..."
brew install -f --cask --appdir="/Applications" ${apps[@]}

echo "Installing store apps..."
storeapps=(
  1176895641 # Spark - Love your email again
  441258766 # Magnet
  539883307 # LINE
  803453959 # Slack
  497799835 # XCode
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
