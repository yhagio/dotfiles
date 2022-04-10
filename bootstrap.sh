#!/bin/zsh

# echo "Installation starts..."

# echo "Installing oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

DOTFILE_DIR = $(pwd)

# echo "Setting up symlinks..."
# ln -sfn $DOTFILE_DIR/local_infra ~/.local_infra
# ln -sfn $DOTFILE_DIR/shopify_stuff ~/.shopify_stuff
ln -sfn $DOTFILE_DIR/zshrc ~/.zshrc 
# ln -sfn $DOTFILE_DIR/gitconfig ~/.gitconfig
# Reference ln command: https://man7.org/linux/man-pages/man1/ln.1.html

source ~/.zshrc

# echo "DONE installation."