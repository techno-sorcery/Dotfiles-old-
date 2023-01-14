#!/bin/bash

#Dotfiles
ln -sf ~/Dotfiles/bashrc ~/.bashrc
ln -sf ~/Dotfiles/Xresources ~/.Xresources
ln -sf ~/Dotfiles/xinitrc ~/.xinitrc
ln -sf ~/Dotfiles/digital ~/.digital.cfg
#sudo ln -sf ~/Dotfiles/tlp /etc/tlp.conf

ln -sf ~/Dotfiles/autorandr/docked/* ~/.config/autorandr/docked
ln -sf ~/Dotfiles/autorandr/mobile/* ~/.config/autorandr/mobile

#Folders
ln -sf ~/Dotfiles/Xmerge/* ~/.Xmerge/
