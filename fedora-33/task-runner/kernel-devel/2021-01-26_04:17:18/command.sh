#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")"
echo "Downloading kernel-devel-5.9.16-200.fc33.x86_64.rpm ..." &&
curl https://kojipkgs.fedoraproject.org//packages/kernel/5.9.16/200.fc33/x86_64/kernel-devel-5.9.16-200.fc33.x86_64.rpm -o "$DIRNAME/kernel-devel-5.9.16-200.fc33.x86_64.rpm" &&
echo "Installing kernel-devel-5.9.16-200.fc33.x86_64.rpm via dnf ..." &&
sudo dnf install "$DIRNAME/kernel-devel-5.9.16-200.fc33.x86_64.rpm" &&
echo "Done!"
