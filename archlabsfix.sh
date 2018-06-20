#!/bin/sh

sudo pacman -Scc

gpg --receive-keys AEFB411B072836CD48FF0381AE252C284B5DBA5D
gpg --receive-keys 9E4F11C6A072942A7B3FD3B0B81EB14A09A25EB0
gpg --receive-keys 35F52A02854DCCAEC9DD5CC410443C7F54B00041

sudo pacman-key --init
sudo pacman-key --populate archlinux

sudo pacman-key -r AEFB411B072836CD48FF0381AE252C284B5DBA5D
sudo pacman-key -r 9E4F11C6A072942A7B3FD3B0B81EB14A09A25EB0
sudo pacman-key -r 35F52A02854DCCAEC9DD5CC410443C7F54B00041

sudo pacman -S archlabs-keyring
sudo pacman-key --populate archlabs
sudo pacman -Syyu
