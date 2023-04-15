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
  bufbuild/buf/buf
  coreutils
  direnv
  exa
  ffmpeg
  fish
  gh
  ghq
  gifsicle
  go
  jq
  koekeishiya/formulae/skhd
  koekeishiya/formulae/yabai
  kubectx
  lazydocker
  mas
  mkcert
  neovim
  node
  peco
  php
  pyenv
  pyenv-virtualenv
  reattach-to-user-namespace
  ripgrep
  skaffold
  svn
  terraform
  tmux
  tmuxinator
  wget
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  1password/tap/1password-cli
  aerial
  akiflow
  android-studio
  around
  audacity
  bartender
  choosy
  coteditor
  cyberduck
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
  iterm2
  keyboard-cleaner
  karabiner-elements
  kindle
  linear-linear
  loom
  messenger
  microsoft-edge
  ngrok
  notion
  obsidian
  skitch
  steam
  studio-3t
  spotify
  ticktick
  tower
  ubersicht
  visual-studio-code
  vivaldi
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
  1482454543 # Twitter
  549083868 # Display Menu
  784801555 # OneNote
  1444383602 # GoodNotes 5
  1435957248 # Drafts
  1487937127 # Crafts
  585829637 # Todoist
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
