#!/bin/bash

current_script_name=$(basename "$0")
echo "=====STARTING $current_script_name====="

echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers

echo "=====DONE $current_script_name====="
echo ""
