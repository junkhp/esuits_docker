#!/bin/sh

if [ "$DATABASE" = "db" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $DATABASE_HOST $DATABASE_PORT; do
        sleep 0.1
    done

    echo "PostgreSQL started"
fi

python manage.py migrate

exec "$@"