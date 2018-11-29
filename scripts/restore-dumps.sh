#!/bin/bash

set -e

echo "Restore MySQL database..."
docker-compose exec mysql sh -c "mysql -u rokka -p123 -e\"show databases;\" | grep rokka && mysql -u rokka -p123 -e\"DROP DATABASE rokka;\""
docker-compose exec mysql sh -c "mysql -u rokka -p123 -e\"CREATE DATABASE rokka;\""
docker cp ./env/local/data/rokka-wordpress-plugin.sql "$(docker-compose ps -q mysql)":/tmp
docker-compose exec mysql sh -c "mysql -u rokka -p123 rokka < /tmp/rokka-wordpress-plugin.sql"
