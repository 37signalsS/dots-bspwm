# BSPWM CATPPUCCIN AND SWAY
![2024-10-01_15-49](https://github.com/user-attachments/assets/944449ff-0149-484e-9993-f16fa73d78db)
![2024-10-01_15-47](https://github.com/user-attachments/assets/3e7dd4d8-d98e-4d3c-99f3-5377cc864282)

## HI!
Я делал данный rice на EndeavourOS без каких-либо соседствующих DE, все настройки идут от `~/.config/bspwm/bspwmrc` В первую очередь, необходимо открыть этот файл и закомментировать/раскомментировать то, что тебе нужно.

Конфиги bspwm sxhkd kitty dunst picom polybar rofi берутся из `~/.config/

## УСТАНОВКА ЭТОГО КОНФИГА

Склонировать репозиторий:
```
git clone https://github.com/37signalsS/dots-bspwm.git
```

Cкопировать все в ~/.config

В ~/.xinitrc прописать:
```
exec sxhkd &
exec bspwm
```

Установить темы и обои при помощи lxappearance и nitrogen. Заменить софт в ~/.config/sxhkd/sxhkdrc на нужный тебе, иначе ничего будет больно. Затем нужно перезагрузиться.

Изменение темы курсора: необходимо отредактировать /usr/share/icons/default/index.theme заменив текущий курсор на свой.

## Software
```
sudo pacman -S telegram-desktop nemo ghostty libreoffice tailscale flameshot yazi haruna pavucontrol obs-studio gthumb zenith zoxide fzf micro fish lxappearance nitrogen picom bspwm polybar rofi sxhkd dunst xorg xorg-xinit clipcat wireguard-tools gvfs jq unzip p7zip fastfetch cmus docker docker-compose polkit-gnome thefuck kolourpaint keepassxc libreoffice-still-ru virtualbox scrcpy android-tools eza git-delta atuin lazygit blueman syncthing yt-dlp fragments kdeconnect network-manager-applet nm-connection-editor power-profiles-daemon
```
```
yay -S discord-canary vesktop zen-browser-bin onlyoffice-bin youtube-music-bin waveterm ytmdl lens-bin
```
### Wayland(sway)
```
sudo pacman -S swaybg swaylock swappy xorg-xwayland wl-clipboard cliphist autotiling nwg-look wlroots xdg-user-dirs slurp grim swaync waybar wofi xdg-desktop-porlal-wlr
```

### Software by laptop
```
yay -S libinput-gestures gestures
```
DE
```
sudo pacman -S fprintd
```
### Lockscreen
```
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
```
```
https://app.warp.dev/get_warp
sudo pacman -U ./<имя_файла>.pkg.tar.zst
```
### Clipboard manager
```
mkdir -p ~/.config/clipcat
clipcatd default-config > ~/.config/clipcat/clipcatd.toml
clipcatctl default-config > ~/.config/clipcat/clipcatctl.toml
clipcat-menu default-config > ~/.config/clipcat/clipcat-menu.toml
```
### Nvim
```
export EDITOR=nvim
```
### Terminal
```
curl -sS https://starship.rs/install.sh | sh
```
```
chsh -s /usr/bin/fish
```
## Powersave battery laptop(only Thinkpad)
```
sudo pacman -S tlp tlp-rdw powertop tp_smapi acpi_call
```
```
sudo systemctl mask systemd-rfkill.service && sudo systemctl mask systemd-rfkill.socket
```
Изменить дефолтный конфиг tlp в /etc/tlp.conf
```
micro /etc/systemd/system/powertop.service
```
```
[Unit]
Description=Powertop tunings

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
```
```
sudo systemctl enable --now tlp.service
```
```
sudo systemctl enable --now powertop.service
```
HP Elitebook
```
sudo pacman -S power-profiles-daemon
```
### Git
Add to .gitconfig in home directory
```
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    dark = true      # or light = true, or omit for auto-detection

[merge]
    conflictstyle = zdiff3
```
# ИНФОРМАЦИЯ О СИСТЕМЕ
| DISTRO   | [EndeavourOS](https://endeavouros.com/)                        |
| -------- | -------------------------------------------------------------- |
| WM       | [BSPWM](https://github.com/baskerville/bspwm)                  |
| BAR      | [Polybar](https://github.com/polybar/polybar)                  |
| LAUNCHER | [rofi](https://github.com/davatorium/rofi)                     |
| TERMINAL | [kitty](https://github.com/kovidgoyal/kitty)                   |
| SHELL    | [Fish](https://fishshell.com/)                                 |
| ICON     | [WhiteSur icon theme](https://www.gnome-look.org/p/1405756)    |
| GTK3     | [Catppuccine GTK Theme](https://www.gnome-look.org/p/1715554)  |
| CURSORS  | [Bibata Modern Ice](https://www.gnome-look.org/p/1197198)      |
| FONT     | [Mononoki Nerd Font](https://www.nerdfonts.com/font-downloads) |

## ССЫЛКИ

My Telegram: https://t.me/kuberctl
