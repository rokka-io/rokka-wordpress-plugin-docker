#!/bin/sh

set -e

HERE=`dirname $0`

set +e

echo "====================="
echo "Running setup..."

$HERE/copy-config-files.sh
$HERE/generate-salts.sh

echo "Setup. Done!"
echo ""

exit $?
