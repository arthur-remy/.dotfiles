#!/bin/sh

sudo pacman -S --needed cronie 
sudo systemctl enable cronie
crontab $HOME/.config/crontabs/user_crontab
sudo crontab $HOME/.config/crontabs/root_crontab

