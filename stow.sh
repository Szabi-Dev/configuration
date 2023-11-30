#!/bin/bash

# refresh tmux configuration file
refresh_tmux() {
    rsync -P tmux/.tmux.conf ~/
}

# refresh tmux configuration file
refresh_zsh() {
    stow -t ~/ -R zsh/.zshrc
    mkdir -p ~/.config/zsh
    stow -t  ~/.config/zsh/ -R zsh/aliasrc
}

# refresh nvim configuration file
refresh_nvim() {
    mkdir -p ~/.config/nvim/
    stow -t  ~/.config/nvim/ nvim 
}

# refresh kitty config file 
refresh_kitty() {
    mkdir -p ~/.config/kitty/
    stow -t ~/.config/kitty/ -R kitty
}

refresh_all() {
    refresh_tmux
    refresh_nvim
    refresh_zsh
    refresh_kitty
}


if [ $# -eq 0 ]; then
    echo "No arguments provided, updating all the configs"
    refresh_all
    exit 1
fi

case $1 in

    tmux)
        refresh_tmux
        ;;
    nvim)
        refresh_nvim
        ;;
    zsh)
        refresh_zsh
        ;;
    kitty)
        refresh_kitty
        ;;
    *)
        echo  "Unknown parameter"
        ;;
esac
