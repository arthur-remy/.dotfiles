#!/usr/bin/env bash

xbacklight $1
notify-send --app-name=brightness \
			--icon=brightnesssettings \
			--hint=int:value:$(xbacklight -get) _

