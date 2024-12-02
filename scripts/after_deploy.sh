#!/bin/bash

cd /home/ubuntu/do_it_ddjango

echo "> Stop & Remove docker services"
sudo docker-compose down

echo "> Run new docker service."
sudo docker-compose up -d --build >> /var/log/deploy.log 2>&1
