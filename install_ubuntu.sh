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

# make 
sudo apt install make -y

# ripgrep for fuzzy finder nvim
sudo apt install ripgrep -y

# tmux + tmux plugin manager 
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zsh and dependencies 
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting autojump
