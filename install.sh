#!/bin/bash

#Install
./apt.sh

#Folders
mkdir Documents
mkdir Downloads
mkdir Github
mkdir Music
mkdir Photos
mkdir Videos

mkdir ~/.Xmerge
mkdir .config/autorandr/docked
mkdir .config/autorandr/mobile

#Symlinks
./symlink.sh
