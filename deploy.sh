##! /bin/bash

docker ps -a

echo "Stop and remove actual container."
docker stop ominidi-web
docker rm ominidi-web

echo "Pull and start a new container."
docker pull ominidi/ominidi-web:latest
docker run --name ominidi-web -d -e APP_ID=${APP_ID} -e APP_SECRET=${APP_SECRET} -p 8080:8080 ominidi/ominidi-web

echo "Container up and running. Back to Prehistory master."
