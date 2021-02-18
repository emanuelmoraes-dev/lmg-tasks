#!/usr/bin/env sh
sudo pacman -S libvirt firewalld dnsmasq ebtables dmidecode &&
sudo systemctl enable --now firewalld &&
sudo systemctl enable --now libvirtd &&
echo "Done!"
