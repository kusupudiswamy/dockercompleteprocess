#!/bin/bash
buildnumber=$1
exists=$(docker service ls|grep docker)
if [ ! "$exists"]; then
docker service create --name subbu -p 8889:8080 kusupudiswamy/docker:$buildnumber
else
docker service update subbu --image kusupudiswamy/docker:$buildnumber
fi
