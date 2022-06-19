#!/bin/bash

# Slight modification of a script made by pawndev
# Github link: https://github.com/pawndev/rofi-autorandr

set -u
set -e

function get_layouts()
{
    autorandr | grep " (detected)"
    autorandr | grep --invert-match " (detected)"
}

function main()
{
    local layouts="$(get_layouts)"
    local layout=$( (echo "${layouts}" | awk '{print $1}')  | rofi -dmenu -p "")
    autorandr --load $layout
}

main

