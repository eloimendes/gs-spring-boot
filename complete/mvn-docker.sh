#!/bin/sh

docker run -v ~/.m2:/root/.m2 -v "$PWD":/usr/src -w /usr/src maven:3.5.2-jdk-8-alpine mvn clean package
docker run -v ~/.m2:/root/.m2 -v "$PWD":/usr/src -w /usr/src maven:3.5.2-jdk-8-alpine mvn help:evaluate -Dexpression=project.version | grep -o "^[0-9]*\.[0-9]*\.[0-9]*" > target/release