#!/bin/bash

PROJECT="moosedev/cyberdashboard-nginx"
DEPLOY_NAME="cyberdashboard-nginx"
DEPLOY_PORT="8010"
INSIDE_PORT="80"

docker build -t $PROJECT .

docker push $PROJECT

ssh root@themoose.fun << EOF 
echo PULLING THE DEPLOYMENT IMAGE FROM DOCKER HUB
docker pull $PROJECT:latest
echo STOPPING THE CURRENT CONTAINER 
docker stop $DEPLOY_NAME || true
echo REMOVING THE OLD CONTAINER
docker rm $DEPLOY_NAME || true
echo REMOVING THE OLD CURRENT IMAGE
docker rmi $PROJECT:current || true
echo RENAMING THE LATEST VERSION TO CURRENT VERSION
docker tag $PROJECT:latest $PROJECT:current
echo STARTING THE CURRENT DEPLOY IMAGE
docker run -d --restart always --name $DEPLOY_NAME -p $DEPLOY_PORT:$INSIDE_PORT $PROJECT:current
echo REMOVING THE RECENT DEPLOY BUNDLE WITH LATEST TAG
docker rmi $PROJECT:latest || true
EOF