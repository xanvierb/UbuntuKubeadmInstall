#!/bin/bash
#####################
# This script installs some basic stuff like aptitude and vim.
# Also it configures vim.
#####################
sudo apt-get update
sudo apt-get install vim -y
echo "set nu
syntax on" > $HOME/.vimrc
sudo sh -c 'echo "set nu
syntax on" > /root/.vimrc'
sudo apt-get install aptitude -y
