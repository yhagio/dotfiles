#!/bin/bash

echo "Installation starts..."

THIS_DIR = $(pwd)

echo "Installing oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

echo "Setting up symlinks..."
ln -s $THIS_DIR/local_infra $HOME/.local_infra
ln -s $THIS_DIR/zshrc ~/.zshrc 
ln -s $THIS_DIR/gitconfig ~/.gitconfig
# Reference ln command: https://man7.org/linux/man-pages/man1/ln.1.html

source ~/.zshrc

echo "DONE installation."