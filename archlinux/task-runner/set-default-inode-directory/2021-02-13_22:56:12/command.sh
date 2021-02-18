#!/usr/bin/env sh
xdg-mime default $1 inode/directory &&
echo "Done!"
