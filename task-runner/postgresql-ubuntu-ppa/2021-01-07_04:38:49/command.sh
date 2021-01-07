#!/usr/bin/env sh
[ -z "$VERSION" ] && VERSION=latest;
echo "Removing the $([ "$VERSION" = latest ] && echo "$VERSION") version $([ "$VERSION" != latest ] && echo "$VERSION") of PostgreSQL ..." &&
sudo apt purge postgresql"$([ "$VERSION" != latest ] && echo "-$VERSION")" &&
echo "Done!"