#!/bin/bash
#app="docker.app"
#docker build -t ${app} .
#docker run -d -p 56733:80 --name=${app} -v $PWD:/app ${app}
sudo docker build -t docker.test .
sudo docker run -d -p 5000:80 --name=docker.test -v "${PWD}:/app" docker.test