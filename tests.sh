set -e
cp .docker-env-example .docker-env -n

docker-compose build
docker-compose run --rm web python manage.py test