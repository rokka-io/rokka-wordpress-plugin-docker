# rokka-wordpress-plugin Docker Dev Environment

rokka-wordpress-plugin dev environment based on docker for [rokka.io](https://rokka.io)

## Requirements

* [Docker >= 17.06.0](https://docs.docker.com/engine/installation/)

## Installation

1. Clone this repo
1. Run `git submodule update --init --recursive`
1. Add the following entries to your hosts file (usually `/etc/hosts`):

    ```
    127.0.0.1 rokka.test
    ```

1. `cp env/local/.env_wp-docker.dist .env`
1. Initialize docker containers:

    ```
    docker-compose up -d
    ```

1. Run setup script to setup environment

    ```
    scripts/setup.sh
    ```

# Known problems

## Booting of MySQL container fails

When the following command fails `docker-compose up mysql` after a complete reset of your docker containers (remove all docker images & rebuild them) you maybe need to delete the mysql data in your home directory:

```
$ rm -rf ./.data
``` 
