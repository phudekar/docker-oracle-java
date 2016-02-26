#!/bin/bash
TAG=latest
VERSION=3.3.9
if [ $# -eq 1 ]
  then
    VERSION=$1
    TAG=$1
fi
echo "building oracle-java:$VERSION"
docker build -t pradiphudekar/oracle-java:$TAG --build-arg JAVA_VERSION=$VERSION .
