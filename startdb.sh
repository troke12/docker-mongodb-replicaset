#!/bin/bash

openssl rand -base64 756 > keyfile.key

docker-compose up -d

sleep 5

docker exec mongo1 /scripts/rs-init.sh
