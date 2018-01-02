#!/usr/bin/env bash

echo "Pausing for database initialization..."
set +e
for i in `seq 1 30`;
do
  #Try to hit the postgres server...
  nc -z db 5432;
  EXITCODE=$?
  #Did it hit the postgres port?
  if [ $EXITCODE -eq 0 ]; then
    echo "Starting web server..."
    pushd blogsite
    #python3 ../manage.py makemigrations
    python3 ../manage.py migrate
    popd
    python3 manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'p@55w0rd')"
    sleep 10
    set -e
    python3 manage.py runserver 0.0.0.0:8000
    exit 0
  fi
  sleep 1
done

exit 1
