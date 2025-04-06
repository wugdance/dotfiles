#!/bin/bash

# Copy from user home directory to repo directory.
echo "Copying tmux config..."
cp ~/.tmux.conf ./.tmux.conf

echo "Copying bash config..."
cp ~/.bashrc ./.bashrc

echo "Copying readline config..."
cp ~/.inputrc ./.inputrc

#--------------------------------------------
echo "Copying the tiling manager config..."

win_user=$(cmd.exe /C "echo %USERNAME%" 2>/dev/null | tr -d '\r')
glzr="/mnt/c/Users/${win_user}/.glzr"

if [ ! -d ./.glzr ]; then
    mkdir ./.glzr
fi

if [ ! -d ./.glzr/zebar ]; then
    mkdir ./.glzr/zebar
fi

cp ${glzr}/glazewm/config.yaml ./.glzr/glazewm/config.yaml
cp ${glzr}/zebar/settings.json ./.glzr/zebar/settings.json
cp -r ${glzr}/zebar/starter-v2/ ./.glzr/zebar/starter-v2
#--------------------------------------------

echo "The saving process have been completed."
