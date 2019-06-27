#!/bin/sh
echo "Create Docker network"
docker network create --subnet=10.11.1.0/24 TDTest
echo "Install Ldap service"
cd ldap
docker-compose up -d
echo "Install GitLab"
cd ..
cd gitlab
docker-compose up -d
