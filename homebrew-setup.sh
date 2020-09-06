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

brew cask install java

binaries=(
  ansible
  awscli
  cf-cli
  composer
  coreutils
  ctags
  direnv
  dfu-programmer
  docker-clean
  elixir
  fish
  ffmpeg
  gifsicle
  ghq
  gpg
  gnu-sed
  gradle
  graphicsmagick
  htop-osx
  hub
  hugo
  imagemagick
  jq
  lazydocker
  mas
  mackup
  #mongodb
  neovim
  nkf
  oath-toolkit
  reattach-to-user-namespace
  redis
  shyiko/kubesec/kubesec
  ssh-copy-id
  teensy_loader_cli
  terraform
  the_silver_searcher
  tig
  tmux
  tmuxinator
  tmux-mem-cpu-load
  tree
  #typesafe-activator
  watchman
  wget
  zsh
  gibo
  peco
  pyenv
  pyenv-virtualenv
  ripgrep
  yarn
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  alfred
  android-file-transfer
  android-platform-tools
  android-studio
  appcleaner
  browserstacklocal
  bluestacks
  chromedriver
  choosy
  coteditor
  cyberduck
  daisydisk
  deckset
  discord
  docker
  dropbox
  duet
  eclipse-ide
  fantastical
  firefox
  flip4mac
  fman
  flux
  font-fontawesome
  font-noto-sans-cjk-jp
  font-roboto
  font-source-han-sans
  gitter
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  gyazo
  hyperswitch
  intellij-idea
  istat-menus
  iterm2
  jasper
  java
  keyboard-cleaner
  karabiner-elements
  kindle
  kitematic
  krisp
  licecap
  loom
  maczip4win
  minecraft
  ngrok
  notion
  # onyx
  obs
  parallels
  postman
  sequel-pro
  sketch
  skitch
  skype
  stack
  steam
  studio-3t
  spotify
  the-unarchiver
  tower
  trailer
  vagrant
  visual-studio-code
  #virtualbox
  webstorm
  quitter
)

brew install ricty --with-powerline
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Installing store apps..."
storeapps=(
  1176895641 # Spark - Love your email again
  441258766 # Magnet
  539883307 # LINE
  585829637 # Todoist
  803453959 # Slack
  1055511498 # Dayone
  1387480496 # BrowserOpener
  1368722917 # Efforless
  1033074719 # Bilingual News
  871726894 # Eye break
  668208984 # GIPHY Capture
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
