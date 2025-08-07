#!/bin/bash


win_user=$(cmd.exe /C "echo %USERNAME%" 2>/dev/null | tr -d '\r')
win_home="/mnt/c/Users/${win_user}"

# Copy from user home directory to repo directory.
echo "Copying tmux config..."
cp ~/.tmux.conf ~/dotfiles/tmux.conf

echo "Copying zsh config..."
cp ~/.zshrc ~/dotfiles/zshrc

echo "Copying lazygit config..."
cp -r ~/.config/lazygit ~/dotfiles/lazygit

echo "Copying bat config..."
cp -r ~/.config/bat ~/dotfiles/bat

#--------------------------------------------
# todo: check that i'm in wsl before perfoming copy
echo "Copying the tiling manager config..."

glzr="${win_home}/.glzr"

if [ ! -d ./.glzr ]; then
    mkdir ~/dotfiles/glzr
fi

if [ ! -d ./.glzr/zebar ]; then
    mkdir ~/dotfiles/.glzr/zebar
fi

cp ${glzr}/glazewm/config.yaml ~/dotfiles/.glzr/glazewm/config.yaml
cp ${glzr}/zebar/settings.json ~/dotfiles/.glzr/zebar/settings.json
cp -r ${glzr}/zebar/starter-v2/. ~/dotfiles/.glzr/zebar/starter-v2/
#--------------------------------------------

echo "Saving wezterm config..."
cp ${win_home}/.wezterm.lua ~/dotfiles/.wezterm.lua

echo "The saving process have been completed."
