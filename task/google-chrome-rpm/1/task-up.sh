#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")/resources"
mkdir -p "$DIRNAME" &&
[ "$1" ] && PKG_FOLDER="$1" || PKG_FOLDER="$DIRNAME"
mkdir -p "$PKG_FOLDER" &&
echo "Downloading Google Chrome..." &&
curl https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -o "$PKG_FOLDER/google-chrome-stable_current_x86_64.rpm" &&
echo "Installing Google Chrome via rpm..." &&
sudo rpm –i "$PKG_FOLDER/google-chrome-stable_current_x86_64.rpm" &&
echo "Done!"
