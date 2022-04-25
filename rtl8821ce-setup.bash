#!
sudo pacman -Syyuu
sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')
sudo pacman -S dkms yay
yay -S rtl8821ce-dkms-git
reboot