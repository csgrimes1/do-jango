#!/usr/bin/env bash

echo "Pausing for database initialization..."
# sleep 10

set +e
for i in `seq 1 30`;
do
  nc -z db 5432;
  EXITCODE=$?
  #Did it hit the postgres port?
  if [ $EXITCODE -eq 0 ]; then
    echo "Starting web server..."
    pushd blogsite
    #python3 ../manage.py makemigrations
    python3 ../manage.py migrate
    popd
    set -e
    python3 manage.py runserver 0.0.0.0:8000
    exit 0
  fi
  sleep 1
done

exit 1
