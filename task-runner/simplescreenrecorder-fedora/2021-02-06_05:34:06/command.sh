#!/usr/bin/env sh
sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm &&
sudo dnf install simplescreenrecorder &&
echo "Done!"
