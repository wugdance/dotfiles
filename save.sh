#!/bin/bash

# Copy from user home directory to repo directory.
echo "Copying tmux conf..."
cp ~/.tmux.conf ./.tmux.conf

echo "Copying bash conf..."
cp ~/.bashrc ./.bashrc

echo "Copying readline conf..."
cp ~/.inputrc ./.inputrc

echo "The saving process have been completed."
