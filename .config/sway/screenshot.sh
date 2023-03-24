#!/usr/bin/bash
# This script will take a screenshot
# Dependencies: sway, grim, slurp

FILENAME="$HOME/screenshot-$(date +'%Y-%m-%d-%H%M%S.png')"

case $1 in
all)	#Screenshot of all outputs
	grim -t jpeg -q 100 $FILENAME ;;

focus)	# Screenshot of focused window
	geometry="$(
		swaymsg -t get_tree |
		grep -A 8 \"focused\"\:\ true |
		grep -o "[0-9]*" |
		awk '
			BEGIN{ RS = "" ; FS = "\n" }
			{printf "%d,%d %dx%d", $2+$1,$3+$1,$4-2*$1,$5-2*$1}')"
	grim -t jpeg -q 100 -g "$geometry" $FILENAME ;;

choice)	#Screenshot von Auswahl
	grim -t jpeg -q 100 -g "$(slurp)" $FILENAME ;;

*)	#Default: Screenshot of focused output
	focused_output="$(
		swaymsg -p -t get_outputs |
		grep focused |
		awk '{print $2}')"
	grim -t jpeg -q 100 -o $focused_output $FILENAME ;;
esac

exit 0
