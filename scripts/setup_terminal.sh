#!/bin/bash

current_script_name=$(basename "$0")
echo "=====STARTING $current_script_name====="

echo "===Installing rxvt==="
sudo apt update
sudo apt install sudo apt install rxvt-unicode -y

echo "===Changing default terminal emulator to urxvt==="
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt

echo "===Downloading extensions==="
sudo wget -O /usr/lib/urxvt/perl/ https://raw.githubusercontent.com/BobuSumisu/urxvt-solarized/master/solarized
sudo wget -O /usr/lib/urxvt/perl/ https://raw.githubusercontent.com/muennich/urxvt-perls/master/keyboard-select

echo "===Setting up extensions==="
echo "URxvt.solarized.default: dark" >> ~/.Xresources

echo "URxvt.keysym.M-Escape: perl:keyboard-select:activate" >> ~/.Xresources
echo "URxvt.keyboard-select.clipboard: true" >> ~/.Xresources

echo "URxvt.perl-ext-common: solarized,keyboard-select" >> ~/.Xresources

echo "===Refreshing settings==="
xrdb ~/.Xresources

echo "=====DONE $current_script_name====="
echo ""
