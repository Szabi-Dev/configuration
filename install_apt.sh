#!/bin/bash

sudo apt update 

# git
sudo apt install git -y

# curl
sudo apt install curl -y

#wget
sudo apt install wget -y

# htop for system monitor
sudo apt install htop -y

# gcc 
sudo apt install gcc -y

# openvpn 
sudo apt install openvpn

# make 
sudo apt install make -y

# ripgrep for fuzzy finder nvim
sudo apt install ripgrep -y

# terminal emulator kitty
sudo apt install kitty

# tmux + tmux plugin manager 
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# autojump for smart navigating
sudo apt install autojump -y

# zsh   
sudo apt install zsh -y 
mkdir -p ~/.config/zsh

# zsh powerlevel theme
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k

#zsh autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zsh-autosuggestions

# zsh syntax highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zsh-syntax-highlighting

# set zsh as default
chsh -s $(which zsh)

# sdk manager for managing different java versions
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
