#!/bin/bash
# Install all packages listed in "packages" directory

echo -en "\nSTARTING INSTALATION\n\n"

for file in $HOME/.config/install/packages/*
do
	[[ -f $file ]] && echo -en "\nInstalling $file\n" && sudo pacman -S - < $file
done

echo -en "\nSTARTING INSTALATION\n\n"

for file in $HOME/.config/install/packages/AUR/*
do
	echo -en "\nInstalling $file\n" 
	yay -S - < $file
done

echo -en "\nINSTALATION COMPLETED"

