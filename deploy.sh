#!/bin/bash
buildnumber=$1
exists=$(docker service ls|grep docker)
if [ ! "$exists"]; then
docker service create --name s -p 8800:8080 kusupudiswamy/docker:$buildnumber
else
docker service update s --image kusupudiswamy/docker:$buildnumber
fi
