#!/bin/sh
(curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -) &&
echo "Done!"
