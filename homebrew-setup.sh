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
  fish
  ffmpeg
  gifsicle
  ghq
  jq
  lazydocker
  mas
  neovim
  node
  reattach-to-user-namespace
  svn
  tmux
  tmuxinator
  tmux-mem-cpu-load
  wget
  peco
  pyenv
  pyenv-virtualenv
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  android-studio
  alfred
  around
  camo-studio
  choosy
  coteditor
  deepl
  discord
  docker
  dropbox
  fantastical
  firefox
  flux
  flutter
  font-fontawesome
  font-noto-sans-cjk-jp
  font-roboto
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  intellij-idea
  istat-menus
  iterm2
  keyboard-cleaner
  karabiner-elements
  kindle
  krisp
  linear-linear
  loom
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
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
