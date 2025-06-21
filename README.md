# BSPWM Catppuccin 

![](https://github.com/user-attachments/assets/944449ff-0149-484e-9993-f16fa73d78db)

## Installation

Clone this repository:
```
git clone https://github.com/37signalsS/Bspwm.git
```

Copy all files to `~/.config`

Add to `~/.xinitrc`:
```
exec sxhkd &
exec bspwm
```

Set up themes using `lxappearance` and wallpapers with `nitrogen`. Customize applications in `~/.config/sxhkd/sxhkdrc` before rebooting.

## Software installation

### Pacman packages
```
sudo pacman -S telegram-desktop nemo ghostty libreoffice tailscale flameshot yazi haruna pavucontrol obs-studio gthumb zenith zoxide fzf micro fish lxappearance nitrogen picom bspwm polybar rofi sxhkd dunst xorg xorg-xinit clipcat wireguard-tools gvfs jq unzip p7zip fastfetch docker docker-compose polkit-gnome thefuck krita keepassxc libreoffice-still-ru virtualbox scrcpy android-tools eza git-delta atuin lazygit blueman syncthing yt-dlp fragments kdeconnect network-manager-applet nm-connection-editor power-profiles-daemon trash-cli dive translate-shell flatpak zed linux-zen linux-zen-headers 
```

### AUR packages 
```
yay -S discord-canary vesktop zen-browser-bin onlyoffice-bin youtube-music-bin lens-bin lazydocker pomatez ttf-times-new-roman vscodium-bin ungoogled-chromium-bin termius archarchive
```

### Laptop-specific packages
```
yay -S libinput-gestures gestures
```

### Additional software
- [Warp Terminal](https://app.warp.dev/get_warp)
  ```
  sudo pacman -U ./<filename>.pkg.tar.zst
  ```
  
- [WaveTerm](https://www.waveterm.dev/download)
  ```
  sudo pacman -U <filename>.pacman
  ```
  
- FreeLens (via Flatpak)
  ```
  flatpak install flathub app.freelens.Freelens
  ```

## Configuration

### Lockscreen setup
```
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
```

### Clipboard manager
```
mkdir -p ~/.config/clipcat
clipcatd default-config > ~/.config/clipcat/clipcatd.toml
clipcatctl default-config > ~/.config/clipcat/clipcatctl.toml
clipcat-menu default-config > ~/.config/clipcat/clipcat-menu.toml
```

### Neovim
```
export EDITOR=nvim
```

### VS Code
Set `restoreWindows` to `none` in settings.

### Terminal Setup
1. Install Starship prompt:
   ```
   curl -sS https://starship.rs/install.sh | sh
   ```
2. Set Fish as default shell:
   ```
   chsh -s /usr/bin/fish
   ```

### Rofi 
To remove specific applications from appearing in Rofi, delete their `.desktop` files from:
- `~/.local/share/applications`
- `/usr/share/applications`

### Default applications
1. View system MIME types:
   ```
   cat /etc/mime.types
   ```
2. Create custom MIME type:
   ```
   mkdir -p ~/.local/share/mime/packages
   nano ~/.local/share/mime/packages/markdown.xml
   ```
   ```
   <?xml version="1.0" encoding="UTF-8"?>
   <mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
       <mime-type type="text/markdown">
           <comment>Markdown Document</comment>
           <glob pattern="*.md"/>
           <glob pattern="*.markdown"/>
       </mime-type>
   </mime-info>
   ```
   ```
   update-mime-database ~/.local/share/mime
   ```
3. Set default application:
   ```
   xdg-mime default dev.zed.Zed.desktop text/plain
   ```
4. Verify default application:
   ```
   xdg-mime query default text/plain
   ```
5. Reset MIME cache:
   ```
   rm -rf ~/.cache/mimeapps.list
   rm -rf ~/.local/share/mime
   update-mime-database ~/.local/share/mime
   ```

### Discord update skipping
Add to `~/.config/discord/settings.json`:
```
{"SKIP_HOST_UPDATE": true}
```

## Power saving (ThinkPad specific)
```
sudo pacman -S tlp tlp-rdw powertop tp_smapi acpi_call
sudo systemctl mask systemd-rfkill.service && sudo systemctl mask systemd-rfkill.socket
```

Configure TLP:
```
micro /etc/tlp.conf
```

Create Powertop service:
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

Enable services:
```
sudo systemctl enable --now tlp.service
sudo systemctl enable --now powertop.service
```

## System information

| Component       | Details                                                                 |
|-----------------|-------------------------------------------------------------------------|
| Distribution    | [EndeavourOS](https://endeavouros.com/)                                 |
| Window Manager  | [BSPWM](https://github.com/baskerville/bspwm)                           |
| Status Bar      | [Polybar](https://github.com/polybar/polybar)                           |
| Application Launcher | [Rofi](https://github.com/davatorium/rofi)                          |
| Terminal        | [Kitty](https://github.com/kovidgoyal/kitty)                            |
| Shell           | [Fish](https://fishshell.com/)                                          |
| Icon Theme      | [WhiteSur icon theme](https://www.gnome-look.org/p/1405756)             |
| GTK3 Theme      | [Catppuccin GTK Theme](https://www.gnome-look.org/p/1715554)            |
| Cursor Theme    | [Bibata Modern Ice](https://www.gnome-look.org/p/1197198)               |
| Font            | [Mononoki Nerd Font](https://www.nerdfonts.com/font-downloads)          |

## Contact

My Telegram: [@kuberctl](https://t.me/kuberctl)


