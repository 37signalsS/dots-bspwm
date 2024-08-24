#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme /usr/share/rofi/themes/blue.rasi
}

chosen=$(printf "⏻ poweroff\n󰜉 reboot\n󰗼 exit\n󰒲 sleep" | rofi_cmd)

case "$chosen" in

	"⏻ poweroff") poweroff ;;
	"󰜉 reboot") reboot ;;
	"󰗼 exit") bspc quit ;;
	"󰒲 sleep") systemctl suspend ;;
	*) exit 1 ;;

esac


