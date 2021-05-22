#!/usr/bin/env sh
[ -z "$NAME" ] && NAME=pgadmin4;
[ -z "$LIB_PGADMIN" ] && LIB_PGADMIN=/var/lib/pgadmin;
[ -z "$DEFAULT_EMAIL" ] && DEFAULT_EMAIL=admin@admin.com;
[ -z "$DEFAULT_PASSWORD" ] && DEFAULT_PASSWORD=admin;
[ -z "$PORT" ] && PORT=61886;
[ -z "$CONF" ] && CONF=1;
if [ "$CONF" -eq 1 ]; then
	echo "Criando $LIB_PGADMIN ..." &&
	mkdir -p "$LIB_PGADMIN"
fi &&
echo "Running image ..." &&
# https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html#examples
docker run -p $PORT:80 \
    -v "$LIB_PGADMIN":/var/lib/pgadmin \
    -e "PGADMIN_DEFAULT_EMAIL=$DEFAULT_EMAIL" \
    -e "PGADMIN_DEFAULT_PASSWORD=$DEFAULT_PASSWORD" \
    --name "$NAME" --user root "$@" -d dpage/pgadmin4 &&
echo "Done!"
