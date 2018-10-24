#!/bin/bash
sudo cp Dockerfile /opt/sam
ls /opt/sam
 cd /opt/sam
buildnumber=$1
pwd
sudo docker build -t  docker:$buildnumber /opt/sam
sudo docker tag docker:$buildnumber kusupudiswamy/docker:$buildnumber
sudo docker push kusupudiswamy/docker:$buildnumber
