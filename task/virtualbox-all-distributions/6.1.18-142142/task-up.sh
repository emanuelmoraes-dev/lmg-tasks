#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")/resources"
mkdir -p "$DIRNAME" &&
echo "Downloading VirtualBox-6.1.18-142142-Linux_amd64.run ..." &&
curl https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-Linux_amd64.run -o "$DIRNAME/VirtualBox-6.1.18-142142-Linux_amd64.run" &&
echo "Giving execution permission for VirtualBox-6.1.18-142142-Linux_amd64.run ..." &&
chmod +x "$DIRNAME/VirtualBox-6.1.18-142142-Linux_amd64.run" &&
echo "Running VirtualBox-6.1.18-142142-Linux_amd64.run ..." &&
sudo "$DIRNAME/VirtualBox-6.1.18-142142-Linux_amd64.run" &&
echo "Done!"
