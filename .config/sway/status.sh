# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do $mod+Shift+c to reload the configuration.

date_formatted=$(date "+%a %d.%m.%Y %H:%M")

audio_muted=$(
	pactl get-sink-mute @DEFAULT_SINK@ |
	awk '{ print $2=="yes" ? "🔇":"🔉" }')
audio_volume=$(
	pactl get-sink-volume @DEFAULT_SINK@ |
	awk '{ print $5 }')

is_wayland=$(
	swaymsg -t get_tree |
	awk '
		/focused": true/,/shell/ {
			if($1 == "\"shell\":") print $2=="\"xdg_shell\"," ? "wayland ✔":"✘wayland"
		}
	')

echo $is_wayland "|" $audio_volume $audio_muted "|" $date_formatted
