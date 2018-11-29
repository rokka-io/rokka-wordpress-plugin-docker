#!/bin/bash

set -e

echo "Restore MySQL database..."
docker-compose exec mysql sh -c "mysql -u rokkavm -p123 -e\"DROP DATABASE IF EXISTS rokkavm;\""
docker-compose exec mysql sh -c "mysql -u rokkavm -p123 -e\"CREATE DATABASE rokkavm;\""
docker cp ./env/local/data/rokka-wordpress-plugin.sql "$(docker-compose ps -q mysql)":/tmp
docker-compose exec mysql sh -c "mysql -u rokkavm -p123 rokkavm < /tmp/rokka-wordpress-plugin.sql"
