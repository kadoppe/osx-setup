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
  brave-browser
  browserstacklocal
  chromedriver
  choosy
  coteditor
  daisydisk
  discord
  docker
  dropbox
  eclipse-ide
  fantastical
  firefox
  flux
  font-fontawesome
  font-noto-sans-cjk-jp
  font-roboto
  font-source-han-sans
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  intellij-idea
  istat-menus
  java
  keyboard-cleaner
  karabiner-elements
  kindle
  krisp
  loom
  maczip4win
  ngrok
  notion
  postman
  sketch
  skitch
  skype
  studio-3t
  spotify
  the-unarchiver
  tower
  visual-studio-code
  webstorm
)

brew install ricty --with-powerline
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

echo "Installing apps..."
brew install -f --cask --appdir="/Applications" ${apps[@]}

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
