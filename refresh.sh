#!/bin/bash

# refresh tmux configuration file
refresh_tmux() {
    rsync -P tmux/.tmux.conf ~/
}

# refresh tmux configuration file
refresh_zsh() {
    rsync -P zsh/.zshrc ~/
    rsync -P zsh/aliasrc ~/.config/zsh/
}

# refresh nvim configuration file
refresh_nvim() {
    mkdir -p ~/.config/nvim/
    rsync -Pr nvim/  ~/.config/nvim/
}

# refresh kitty config file 
refresh_kitty() {
    mkdir -p ~/.config/kitty/
    rsync -Pr kitty/kitty.conf  ~/.config/kitty/
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
