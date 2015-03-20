#!/usr/bin/env bash

nodebrew install-binary 0.10.36
nodebrew install-binary 0.11.16
nodebrew install-binary 0.12.0
nodebrew use 0.10.36

npm install -g eslint
npm install -g react-tools
npm install -g gulp
npm install -g bower
npm install -g mean-cli

