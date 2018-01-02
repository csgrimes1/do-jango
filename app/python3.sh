#!/usr/bin/env bash

MYDIR=$(cd $(dirname "$0") && pwd)
source "$MYDIR/../vars.sh"

pushd "$MYDIR"
set -x
# docker run -v "$MYDIR:/usr/app" \
#   -w "/usr/app" \
#   -it --rm \
#   -e "PYTHON_PASSWORD=$PYTHON_PASSWORD" \
#   python:3.7-rc-stretch python3 "$@"
docker-compose run --rm app python3 "$@"
set +x
popd
