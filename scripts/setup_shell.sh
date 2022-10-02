#!/bin/bash

current_script_name=$(basename "$0")
echo "=====STARTING $current_script_name====="

echo "===Installing zhs, git, curl==="
sudo apt update
sudo apt install zsh git curl -y

echo "===Changing default shell to zsh==="
sudo chsh -s "$(which zsh)" "$(whoami)"

echo "===Downloading ohmyzsh, p10k, zsh-syntax-highlighting==="
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

echo "===Copying .zshrc==="
cp dotfiles/.zshrc ~

echo "Restart to apply changes"

echo "=====DONE $current_script_name====="
echo ""
