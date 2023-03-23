#!/usr/bin/env bash
# This script will toggle gammastep
# Dependencies: sway, gammastep, gnu-utils

PID="$(ps -e | grep gammastep | awk -F ' ' '{print $1}')"

if [[ $PID > 0 ]]; then
	kill $PID
else
	swaymsg exec "gammastep-indicator -c .config/sway/gammastep.ini"
fi

exit 0
