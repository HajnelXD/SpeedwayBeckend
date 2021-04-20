#!/usr/bin/env bash
set -e
cp .docker-env-example .docker-env -n

docker-compose build
./manage.sh migrate
echo "### creating super user for django... ###"
./manage.sh createsuperuser --email hajnelxdxd@gmail.com --username admin