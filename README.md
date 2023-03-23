# SwayWM
My current Sway Config for Arch Linux. On other Distros there could be problems, if they have no systemd or are missing gnu-utils.

### Includes:
- customizable scripts for menu, screenshots, gammastep and other functions
- many bindsyms ([neo2](https://www.neo-layout.org/) keyboard layout)
- already set up to support xwayland and wine (for wine also see [this issue](https://wiki.archlinux.org/title/Sway#Mouse_not_working_in_WINE_applications))

### Setting up
- install dependencies
- Place the files in .config in XDG_CONFIG_HOME
- add the environment variables to your .bashrc
- make shell-scripts executable (chmod u+x filename.sh)
- edit the .config/sway/gammastep.ini to your timezone
- start sway

### Dependencies:
- [alacritty](https://github.com/alacritty/alacritty)
- [bemenu](https://github.com/Cloudef/bemenu)
- emoji-font (e.g. [noto-emoji](https://github.com/googlefonts/noto-emoji))
- [gammastep](https://gitlab.com/chinstrap/gammastep)
- [grim](https://sr.ht/~emersion/grim/)
- [mako](https://github.com/emersion/mako)
- [polkit-gnome](https://gitlab.gnome.org/Archive/policykit-gnome)
- [slurp](https://github.com/emersion/slurp)

install all with: ```sudo pacman -Syu alacritty bemenu noto-fonts-emoji gammastep grim mako polkit-gnome slurp```

### Licences
the wallpaper is "Winter Fairies" by David Revoy, licensed under Creative Commons Attribution 4.0.
You can download it [here](https://www.peppercarrot.com/en/viewer/artworks-src__2020-12-21_Winter-Fairies_by-David-Revoy.html) or find more artworks [here](https://www.peppercarrot.com/en/artworks/artworks.html)
