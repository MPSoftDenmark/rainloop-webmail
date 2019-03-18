#!/bin/bash
###################################################################
# auto deploy rainloop webmail (docker)
###################################################################
export DEBIAN_FRONTEND=noninteractive

cd /usr/src/rainloop-webmail

git pull

rm -rf /var/rainloop-webmail

cp -r /usr/src/rainloop-webmail /var/.

cd /var/rainloop-webmail

service docker restart 

make rebuild

