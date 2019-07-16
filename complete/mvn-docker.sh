#!/bin/sh

docker run -v ~/.m2:/root/.m2 -v "$PWD":/usr/src -w /usr/src maven:3.5.2-jdk-8-alpine mvn package