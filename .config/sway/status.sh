# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do $mod+Shift+c to reload the configuration.

date_formatted=$(date "+%a %d.%m.%Y %H:%M")
audio_muted=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{ print $2=="yes" ? "🔇":"🔉" }')
audio_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{ print $5 }')

echo $audio_volume $audio_muted "|" $date_formatted
