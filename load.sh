#!/bin/bash

# Save existent configs.
cp -i ~/.tmux.conf ~/.tmux.conf.old
cp -i ~/.bashrc ~/.bashrc.old
cp -i ~/.inputrc ~/.inputrc.old

# Load config from repo.
echo "Loading tmux conf..."
cp ./.tmux.conf ~/.tmux.conf

echo "Loading bash conf..."
cp ./.bashrc ~/.bashrc

echo "Loading readline conf..."
cp ./.inputrc ~/.inputrc

echo "The loading process have been completed."
