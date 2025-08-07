#!/usr/bin/bash
set -e

sudo apt upgrade && sudo apt update -y
sudo apt install wget git -y

curl https://sh.rustup.rs -sSf | sh

cargo install --locked bat
bat cache --build

sudo apt install lazygit -y

# ----------------------------- delta ---------------------------------
cargo install git-delta
mkdir $HOME/.config/delta
# todo: is it robust way of doing it?
wget -P $HOME/.config/delta https://raw.githubusercontent.com/dandavison/delta/main/themes.gitconfig

# ------------------------------ git ----------------------------------
# todo:
# * delta setup

# todo:
# * install wezterm
# * glazewm

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# ------------------------------ zsh ----------------------------------
sudo apt install zsh -y

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/zsh-completions
git clone https://github.com/jeffreytse/zsh-vi-mode ~/.zsh/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search
