#!/bin/sh

set -e

HERE=`dirname $0`
DOCKER_ROOT="$HERE/.."

set +e

echo "====================="
echo "Copying config files..."

cd $DOCKER_ROOT
cp env/local/wp-dev-config.php web/wp-dev-config.php

echo "Copying config files. Done!"
echo ""

exit $?
