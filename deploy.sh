#!/bin/bash
set -e

docker-compose pull
docker-compose build
docker-compose run web rails db:migrate
docker-compose stop
docker-compose up -d