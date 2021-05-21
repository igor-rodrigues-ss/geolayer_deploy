#!/bin/bash

[[ -d ./geolayers_be ]] && rm -r ./geolayers_be
git clone https://github.com/igor-rodrigues-ss/geolayers_be.git
docker-compose up --build
