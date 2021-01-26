#!/usr/bin/env sh
[ -z "$VERSION" ] && VERSION=latest;
echo "Creating the file repository configuration ..." &&
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' &&
echo "Importing the repository signing key ..." &&
(wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -) &&
echo "Updating the package lists ..." &&
sudo apt-get update &&
echo "Instaling the $([ "$VERSION" = latest ] && echo "$VERSION") version $([ "$VERSION" != latest ] && echo "$VERSION") of PostgreSQL ..." &&
sudo apt-get -y install postgresql"$([ "$VERSION" != latest ] && echo "-$VERSION")" &&
echo "Done!"