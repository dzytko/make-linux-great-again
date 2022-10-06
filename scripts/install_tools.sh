#!/bin/bash

current_script_name=$(basename "$0")
echo "=====STARTING $current_script_name====="

sudo apt update
sudo apt install tree neovim htop -y

echo "alias v='nvim'" >> ~/.aliases
echo "alias vim='nvim'" >> ~/.aliases

echo "=====DONE $current_script_name====="
echo ""
