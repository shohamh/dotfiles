#!/bin/bash

mv ~/dotfiles ~/.dotfiles
cd ~/.dotfiles
USER_CONF_DIRS=$(ls -A1d */)

for USER_CONF_DIR in $USER_CONF_DIRS
do
    echo $USER_CONF_DIR
    stow -v -t ~ $USER_CONF_DIR
done

cd ~/.dotfiles/.root/
sudo install.sh

