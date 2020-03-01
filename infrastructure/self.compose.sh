#!/usr/bin/env bash

#===================================
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
#===================================
sudo docker-compose up -d --build