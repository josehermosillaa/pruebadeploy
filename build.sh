#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py makemigrations
python manage.py migrate

DJANGO_SUPERUSER_EMAIL=jose@email.com
export DJANGO_SUPERUSER_EMAIL

DJANGO_SUPERUSER_USERNAME=josehermosillaa
export DJANGO_SUPERUSER_USERNAME

DJANGO_SUPERUSER_PASSWORD=Jha25101991#
export DJANGO_SUPERUSER_PASSWORD

python manage.py createsuperuser --noinput --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL --password $DJANGO_SUPERUSER_PASSWORD