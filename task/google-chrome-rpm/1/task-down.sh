#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")/resources"
mkdir -p "$DIRNAME" &&
[ "$1" ] && PKG_FOLDER="$1" || PKG_FOLDER="$DIRNAME"
echo "Uninstaling Google Chrome via rpm..." &&
sudo rpm –e google-chrome-stable &&
echo "Done!"
