#!/bin/bash

# refresh tmux configuration file
refresh_tmux() {
    mkdir -p ~/.config/tmux
    stow -t ~/.config/tmux  -R tmux
}

# refresh tmux configuration file
refresh_zsh() {
    ln zsh/.zshrc ~/.zshrc
    mkdir -p ~/.config/zsh/aliases/
    cd zsh/ 
    stow -t ~/.config/zsh/aliases/ -R aliases
    cd ..
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
