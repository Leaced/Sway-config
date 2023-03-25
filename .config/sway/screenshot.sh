#!/usr/bin/bash
# This script will take a screenshot
# Dependencies: sway, grim, slurp

FILENAME="$HOME/screenshot-$(date +'%Y-%m-%d-%H%M%S.png')"

case $1 in
all)	#Screenshot of all outputs
	grim -t jpeg -q 100 $FILENAME ;;

focus)	# Screenshot of focused window
	geometry=$(
		swaymsg -t get_tree |
		awk '
			BEGIN { ORS=" " };
			lines_after&&lines_after-- {print $2+0};	#loop over n lines. Print only numbers
			/focused": true/,/window_rect/ {
				if($1=="\"window_rect\":") lines_after=4;
				if($1=="\"rect\":") lines_after=2
			}' |
		awk '{printf "%d,%d %dx%d", $1+$3,$2+$4,$5,$6}')
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
