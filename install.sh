#!/bin/bash

#Install
./apt.sh

#Folders
mkdir ~/.Xmerge
mkdir Documents
mkdir Downloads
mkdir Github
mkdir Music
mkdir Photos
mkdir Videos

#Symlinks
./symlink.sh
