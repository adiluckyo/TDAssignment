#!/bin/sh
echo "-------------------------Create Docker network-------------------------"
docker network create --subnet=10.11.1.0/24 TDTest
echo "-------------------------Starting services-------------------------"
docker-compose up -d

