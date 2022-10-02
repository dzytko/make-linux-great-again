#!/bin/bash

current_script_name=$(basename "$0")
echo "=====STARTING $current_script_name====="

source ./scripts/setup_auto_sudo.sh
sudo apt update

source ./scripts/install_tools.sh
source ./scripts/setup_shell.sh
source ./scripts/setup_terminal.sh

echo "=====DONE $current_script_name====="
echo ""