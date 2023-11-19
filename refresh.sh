#!/bin/bash

# refresh tmux configuration file
refresh_tmux() {
    rsync -P .tmux.conf ~/
}

refresh_all() {
    refresh_tmux
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

    *)
        echo  "Unknown parameter"
        ;;
esac
