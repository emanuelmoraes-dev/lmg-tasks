#!/usr/bin/env sh
echo "Updating mirros..." &&
sudo apt update &&
echo "Installing libreoffice..." &&
sudo apt install libreoffice-gnome libreoffice &&
echo "Done!"
