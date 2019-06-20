#!/bin/sh

set -e

HERE=`dirname $0`
DOCKER_ROOT="$HERE/.."

set +e

echo "====================="
echo "Copying config files..."

cd $DOCKER_ROOT
cp env/local/.env_docker.dist .env
cp env/local/.env_wp.dist rokka/.env

echo "Copying config files. Done!"
echo ""

exit $?
