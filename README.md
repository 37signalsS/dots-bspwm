# BSPWM CATPPUCCIN
![2024-08-24_13-46](https://github.com/user-attachments/assets/034a2f88-b6ad-41fa-903f-c848d341f854)
![2024-08-24_14-01](https://github.com/user-attachments/assets/310e3350-950a-47ca-bae3-3ccdf09916aa)
## HI!
Я делал данный rice на EndeavourOS без каких либо соседствующих DE, все настройки идут от `~/.config/bspwm/bspwmrc` В первую очередь необходимо открыть этот файл и закоментировать/раскоментировать то что тебе нужно.  
  
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
  
Установить темы и обои при помощи lxappearance и nitrogen. Заменить софт в ~/.config/sxhkd/sxhkdrc на нужный тебе. Перезагрузится.  

## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S firefox telegram-desktop obsidian thunar timeshift lxappearance nitrogen libreoffice flameshot mpv pavucontrol pulseaudio code obs-studio gthumb kitty htop zoxide fzf micro fish picom bspwm polybar rofi sxhkd dunst xorg xorg-xinit clipcat wireguard-tools gvfs jq unzip fastfetch cmus docker docker-compose 

yay cava vesktop
```
  
# ИНФОРМАЦИЯ О СИСТЕМЕ
| DISTRO   | [EndeavourOS](https://endeavouros.com/)                        |
| -------- | -------------------------------------------------------------- |
| WM       | [BSPWM](https://github.com/baskerville/bspwm)                  |
| BAR      | [Polybar](https://github.com/polybar/polybar)                  |
| LAUNCHER | [rofi](https://github.com/davatorium/rofi)                     |
| TERMINAL | [Kitty](https://github.com/kovidgoyal/kitty)                   |
| SHELL    | [Fish](https://fishshell.com/)                                 |
| ICON     | [WhiteSur icon theme](https://www.gnome-look.org/p/1405756)    |
| GTK3     | [Catppuccine GTK Theme](https://www.gnome-look.org/p/1715554)  |
| CURSORS  | [Bibata Modern Ice](https://www.gnome-look.org/p/1197198)      |
| FONT     | [Mononoki Nerd Font](https://www.nerdfonts.com/font-downloads) |
  
## ССЫЛКИ

My Telegram: @kuberctl

