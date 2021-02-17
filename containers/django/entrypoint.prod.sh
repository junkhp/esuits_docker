#!/bin/sh

if [ "$DATABASE" = "db" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $DATABASE_HOST $DATABASE_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi
echo "collect static"
python manage.py collectstatic --no-input --clear

exec "$@"