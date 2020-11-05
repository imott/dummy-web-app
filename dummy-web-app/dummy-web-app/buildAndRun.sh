#!/bin/sh
mvn clean package && docker build -t com.airhacks/dummy-web-app .
docker rm -f dummy-web-app || true && docker run -d -p 8080:8080 -p 4848:4848 --name dummy-web-app com.airhacks/dummy-web-app 
