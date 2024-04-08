#!/bin/bash

# add repository
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

# install vs code and dependencies
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# install extensions
pkglist=(
    # general
    TabNine.tabnine-vscode
    # angular
    esbenp.prettier-vscode
    Angular.ng-template
    # appearence 
    sainnhe.everforest
    # vim
    vscodevim.vim
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done

# link settings
sudo rm  ~/.config/Code/User/settings.json 
sudo rm  ~/.config/Code/User/keybindings.json

ln  ./config/settings.json ~/.config/Code/User/settings.json
ln  ./config/keybindings.json ~/.config/Code/User/keybindings.json

