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
sudo apt install openvpn -y

# gpg for encryption
sudo apt install gpg -y

# make 
sudo apt install make -y

# bat for showing files nicely
sudo apt install bat -y

# xclip to access clipboard from terminal 
sudo apt install xclip -y

# stow to create symlinks
sudo apt install stow -y

# ripgrep for fuzzy finder nvim
sudo apt install ripgrep -y

# terminal emulator kitty
sudo apt install kitty -y

# tmux + tmux plugin manager 
sudo apt install tmux -y
mkdir -p ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/tpm

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

