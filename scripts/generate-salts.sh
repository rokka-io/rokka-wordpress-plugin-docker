#!/bin/sh

set -e

HERE=`dirname $0`
DOCKER_ROOT="$HERE/.."

set +e

echo "====================="
echo "Installing dotenv command"
docker-compose run --rm cli sh -c "wp package install aaemnnosttv/wp-cli-dotenv-command:^1.0"
echo "====================="
echo "Dotenv command installed!"
echo "====================="
echo "Generating keys & salts"
docker-compose run --rm cli sh -c "wp dotenv salts"
echo "====================="
echo "Keys & salts generated!"
echo ""
cd $DOCKER_ROOT



exit $?

