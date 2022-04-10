#!/bin/zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

ln -sf ~/dotfiles/local_infra ~/.local_infra
ln -sf ~/dotfiles/shopify_stuff ~/.shopify_stuff
ln -sf ~/dotfiles/zshrc ~/.zshrc

# Only run nested steps in Spin workspaces.
if [[ "$SPIN" = 1 ]]
then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/home/src/github.com/shopify/shopify" ]]
  then
    # cartridge insert yhagio/setup
    # . ~/.data/cartridges/setup/setup.sh
  fi
fi

source ~/.zshrc

# Reference ln command: https://man7.org/linux/man-pages/man1/ln.1.html
