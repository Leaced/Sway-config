# SwayWM
My current Sway Config for Arch Linux. On other Distros there could be problems, if they have no systemd or are missing gnu-utils.

### Includes:
- custom menu with screenshots, gammastep-toggle and other functions
- many bindsyms
- xwayland and wine support (for wine see [this issue](https://wiki.archlinux.org/title/Sway#Mouse_not_working_in_WINE_applications))

### Setting up
- install dependencies
- Place this files in XDG_CONFIG_HOME
- edit outputs and the background images in sway/config
- edit the .config/sway/gammastep.ini to your timezone
- start sway

### Dependencies:
- alacritty
- bemenu
- emoji-font (e.g. noto-fonts-emoji)
- gammastep
- grim
- mako
- polkit-gnome
- slurp

install all with: ```sudo pacman -Syu alacritty bemenu noto-fonts-emoji gammastep grim mako polkit-gnome slurp```
