#!/bin/sh

set -e

HERE=`dirname $0`

set +e

echo "====================="
echo "Running setup..."

$HERE/copy-config-files.sh
$HERE/restore_dumps.sh

echo "Setup. Done!"
echo ""

exit $?
