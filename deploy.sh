#!/bin/bash

args="$@"


clone() {
  [[ -d ./be/geolayers_be ]] && rm -rf ./be/geolayers_be
  [[ -d ./fe/geolayers_fe ]] && rm -rf ./fe/geolayers_fe

  git clone https://github.com/igor-rodrigues-ss/geolayers_be.git be/geolayers_be
  git clone https://github.com/igor-rodrigues-ss/geolayers_fe.git fe/geolayers_fe
}



if [[ ! "$args" =~ "stop" ]]
    then
      clone
fi

if [ -z "$args" ]
  then
  docker-compose up -d --build
else
  docker-compose "$@"
fi