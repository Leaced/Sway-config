#!/usr/bin/bash
# This script will open a little menu with different options
# Dependencies: Bemenu, emoji-font, systemd

screenshot () {
case "$(echo -e "🖧 ...von allen Bildschirmen
🗔 ...vom aktiven Fenster
⌗ ...von Auswahl
🖵 ...vom Bildschirm" |
bemenu -p "Foto" "$@")" in

"🖧 ...von allen Bildschirmen") exec .config/sway/screenshot.sh all ;;
"🗔 ...vom aktiven Fenster") exec .config/sway/screenshot.sh focus ;;
"⌗ ...von Auswahl") exec .config/sway/screenshot.sh choice ;;
"🖵 ...vom Bildschirm") exec .config/sway/screenshot.sh ;;
esac

exit 0
}

case "$(echo -e "🖼 Bildschirmfoto...
🌘 gammastep umschalten
🔒 ausloggen
⏻ Herunterfahren
↻ Neustarten
⏾ Standby" |
bemenu -p "Menü" "$@")" in

"🖼 Bildschirmfoto...")
	screenshot "$@";;
"🌘 gammastep umschalten")
	exec ~/.config/sway/toggle_gammastep.sh ;;
"🔒 ausloggen")
	loginctl terminate-user $USER ;;
"⏻ Herunterfahren")
	shutdown now ;;
"↻ Neustarten")
	reboot ;;
"⏾ Standby")
	systemctl suspend ;;
esac

exit 0
