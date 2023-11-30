#!/bin/bash

CONFIG_HOME="/usr/local/etc/ovpn_configs"

if [ -d "$CONFIG_HOME" ]; then
    shopt -s nullglob    # In case there aren't any files
    configs=( "$CONFIG_HOME"/*.ovpn )
    case ${#configs[@]} in 
        0)
            echo 'No configurations found!'
            ;;
        1)
            sudo openvpn "${configs[0]}"
            ;;
        *)
            i=0
            for f in ${configs[*]}; do
                echo "[$i] $f"
                i=$((i+1))
            done
            echo "Please select a config: "
            read selection
            sudo openvpn "${configs[$selection]}"
            ;;
    esac
else
    echo 'Please create an ovpn_configs directory under /usr/local/etc/ and populate it with config files.'
    exit 1
fi

