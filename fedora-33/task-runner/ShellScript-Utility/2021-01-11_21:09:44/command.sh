#!/usr/bin/env sh
[ -z "$DIRNAME" ] && DIRNAME="$(dirname "$0")";
[ -z "$REPONAME" ] && REPONAME="ShellScript-Utility";
rm -rf "$DIRNAME/$REPONAME" 1> /dev/null 2> /dev/null;
git clone https://github.com/emanuelmoraes-dev/ShellScript-Utility.git "$DIRNAME/$REPONAME" &&
echo "Coping to /usr/bin/ ..." &&
sudo cp -f "$DIRNAME/$REPONAME/bin/gendesk" /usr/bin &&
sudo cp -f "$DIRNAME/$REPONAME/bin/parameter-helper" /usr/bin &&
echo "Done!"
