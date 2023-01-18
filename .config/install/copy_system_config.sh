#!/bin/bash

files=$(find $HOME/.config/system -type f)

for f in $files; do
	sudo cp $f ${f#$HOME/.config/system}
done

