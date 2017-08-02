#!/bin/sh
if [ `uname` == 'Linux' ]
  then
    curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
    sudo mkdir -p /opt/bin
    sudo mv ~/docker-compose /opt/bin/docker-compose
    sudo chown root:root /opt/bin/docker-compose
    sudo chmod +x /opt/bin/docker-compose
else
    echo "run in container, not here!"
fi