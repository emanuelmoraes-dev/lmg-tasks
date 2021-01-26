#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")/resources"
mkdir -p "$DIRNAME" &&
[ "$1" ] && PKG_FOLDER="$1" || PKG_FOLDER="$DIRNAME"
mkdir -p "$PKG_FOLDER" &&
echo "Downloading Google Chrome..." &&
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o "$PKG_FOLDER/google-chrome-stable_current_amd64.deb" &&
echo "Installing Google Chrome via dpkg..." &&
sudo dpkg -i "$PKG_FOLDER/google-chrome-stable_current_amd64.deb" &&
echo "Resolving apt..." &&
sudo apt install -f &&
echo "Done!"
