#/bin/sh

docker-compose down &&
    docker-compose up -d --force-recreate --remove-orphans --build
