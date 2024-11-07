# BSPWM CATPPUCCIN
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


## СОФТ, КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S telegram-desktop thunar timeshift lxappearance nitrogen libreoffice tailscale flameshot mpv pavucontrol code obs-studio gthumb kitty htop zoxide fzf micro fish picom bspwm polybar rofi sxhkd dunst xorg xorg-xinit clipcat wireguard-tools gvfs jq unzip fastfetch cmus docker docker-compose conky polkit-gnome thefuck imagemagick lua51
```
```
yay -S vesktop errands termius zen-browser-bin parabolic 
```
### СОФТ, ДЛЯ НОУТБУКА
```
yay -S libinput-gestures gestures
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
Скачанный файл переместить в cd /var/cache/pacman/pkg
pacman -Su   
```
### Clipboard manager
```
mkdir -p ~/.config/clipcat
clipcatd default-config > ~/.config/clipcat/clipcatd.toml
clipcatctl default-config > ~/.config/clipcat/clipcatctl.toml
clipcat-menu default-config > ~/.config/clipcat/clipcat-menu.toml
```
## Энегопотребление для ноутбука
```
sudo pacman -S tlp tlp-rdw powertop
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

