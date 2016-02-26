Dockerfile Repository to build a docker image for Oracle Java
====

# Clone the Repository

`$ git clone https://github.com/phudekar/docker-oracle-java.git`

# Build the docker image

`$ docker build .`

You can specify the Java version

`$ docker build --build-arg JAVA_VERSION=8 .`
