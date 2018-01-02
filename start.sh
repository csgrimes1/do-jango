#!/usr/bin/env bash

MYDIR=$(cd $(dirname "$0") && pwd)
source "$MYDIR/vars.sh"
docker-compose build
docker-compose up
