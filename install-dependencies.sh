#!/usr/bin/bash
set -e
sudo apt upgrade && sudo apt update -y


# todo:
# * install delta
# * install wezterm
# * glazewm
# * install bat + cargo + latest version that is compitable with delta

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# ------------------------------ zsh ----------------------------------
sudo apt install zsh -y

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/zsh-completions
git clone https://github.com/jeffreytse/zsh-vi-mode ~/.zsh/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search
