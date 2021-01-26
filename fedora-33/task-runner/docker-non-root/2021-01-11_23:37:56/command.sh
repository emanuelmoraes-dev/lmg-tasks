#!/usr/bin/env sh
USER="$@"
if [ "${#USER}" = "0" ]; then
    echo "write your username:"
    read USER
    while [ "${#USER}" = "0" ]; do
        echo "username cannot be empty. Write your username:"
        read USER
    done
fi
sudo groupadd docker
sudo gpasswd -a ${USER} docker &&
sudo systemctl restart docker &&
newgrp docker &&
echo "Done!"
