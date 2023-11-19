#!/bin/bash

# refresh tmux configuration file
refresh_tmux() {
    rsync -P .tmux.conf ~/
}

# refresh nvim configuration file
refresh_nvim() {
    mkdir -p ~/.config/nvim/
    rsync -Pr nvim/  ~/.config/nvim/
}
refresh_all() {
    refresh_tmux
    refresh_nvim
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
    *)
        echo  "Unknown parameter"
        ;;
esac
