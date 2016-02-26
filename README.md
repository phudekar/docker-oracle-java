Oracle Java Dockerfile
====

Dockerfile Repository to build a docker image based on Ubuntu 14.04 for Oracle Java

## Clone the Repository

`$ git clone https://github.com/phudekar/docker-oracle-java.git`

## Build the docker image

`$ docker build .`

You can specify the Java version

`$ docker build --build-arg JAVA_VERSION=8 .`
