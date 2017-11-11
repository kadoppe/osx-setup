#!/usr/bin/env fish

asdf install nodejs 8.8.1
asdf global nodejs 8.8.1

npm install -g npm@3.8.8
asdf reshim nodejs
