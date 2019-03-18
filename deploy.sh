#!/bin/bash
###################################################################
# auto deploy rainloop webmail (docker)
###################################################################
export DEBIAN_FRONTEND=noninteractive

sudo apt-key update
sudo apt-get update

cd /usr/src/rainloop-webmail

git pull

rm -rf /var/rainloop-webmail

cp -r /usr/src/rainloop-webmail /var/.

cd /var/rainloop-webmail

#docker-compose down --rmi all

service docker restart 

docker-compose pull

#docker-compose build

docker-compose up -d 

#make rebuild