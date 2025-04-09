#!/bin/bash

win_user=$(cmd.exe /C "echo %USERNAME%" 2>/dev/null | tr -d '\r')
win_home="/mnt/c/Users/${win_user}"

# Save existent configs.
cp -i ~/.tmux.conf ~/.tmux.conf.old
cp -i ~/.bashrc ~/.bashrc.old
cp -i ~/.inputrc ~/.inputrc.old
cp -i ${win_home}/.wezterm.lua ${win_home}/.wezterm.lua.old
# todo: you also should make checkpoint for glzr directory.

# Load config from repo.
echo "Loading tmux conf..."
cp ./.tmux.conf ~/.tmux.conf

echo "Loading bash conf..."
cp ./.bashrc ~/.bashrc

echo "Loading readline conf..."
cp ./.inputrc ~/.inputrc

#--------------------------------------------
echo "Loading the tiling manager config..."

glzr="${win_home}/.glzr"

cp ./.glzr/glazewm/config.yaml ${glzr}/glazewm/config.yaml
cp ./.glzr/zebar/settings.json ${glzr}/zebar/settings.json
cp -r ./.glzr/zebar/starter-v2/. ${glzr}/zebar/starter-v2/
#--------------------------------------------

echo "Loading wezterm config..."
cp ./.wezterm.lua ${win_home}/.wezterm.lua


echo "The loading process have been completed."
