#!/usr/bin/env sh

docker-compose run --rm php if-l-constant.php
docker-compose run --rm php if-r-constant.php
