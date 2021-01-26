#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")/resources"
mkdir -p "$DIRNAME"
[ -z "$FOLDER_INSTALL" ] && FOLDER_INSTALL="/usr/local"
[ -z "$PKGNAME" ] && PKGNAME="tsetup.tar.xz"

rm -rf "$DIRNAME/$PKGNAME" 1> /dev/null 2> /dev/null;
echo "Downloadig Telegram ..." &&
curl -L https://telegram.org/dl/desktop/linux -o "$DIRNAME/$PKGNAME" &&
echo "Extracting Telegram to $FOLDER_INSTALL ..." &&
tar -xvJf "$DIRNAME/$PKGNAME" -C "$FOLDER_INSTALL" &&
echo "Extracted Telegram to $FOLDER_INSTALL" &&
echo "Done!"
