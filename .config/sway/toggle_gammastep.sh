#!/usr/bin/bash
# This script will toggle gammastep
# Dependencies: gammastep

PID="$(ps -e | grep gammastep | awk -F ' ' '{print $1}')"

if [[ $PID > 0 ]]; then
	kill $PID
else
	gammastep-indicator -c .config/sway/gammastep.ini
fi

exit 0
