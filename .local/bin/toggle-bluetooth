#!/bin/bash

current_status=$(rfkill | awk '/bluetooth/ {print $4}')

case $current_status in
	blocked)
		rfkill unblock bluetooth;;
	unblocked)
		rfkill block bluetooth;;
esac

