#!/bin/bash

ROOT_CONF_DIRS=$(ls -A1d */)
rm /etc/pacman.conf
rm /etc/pacman.d/mirrorlist

for ROOT_CONF_DIR in $ROOT_CONF_DIRS
do
    echo $ROOT_CONF_DIR
    stow -v -t / $ROOT_CONF_DIR
done
