#!/bin/bash

current_script_name=$(basename "$0")
echo "=====STARTING $current_script_name====="

sudo apt update
sudo apt install i3 -y

echo "=====DONE $current_script_name====="
echo ""
