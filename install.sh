#!/bin/bash

sudo apt update 

# tmux + create a link for the config
sudo apt install tmux -y
ln  .tmux.conf ~/.tmux.conf

# curl
sudo apt install curl -y

#wget
sudo apt install wget -y

# git
sudo apt install git -y

# htop for system monitor
sudo apt install htop -y

# gcc 
sudo apt install gcc -y

# make 
sudo apt install make -y

# ripgrep for fuzzy finder nvim
sudo apt install ripgrep -y

