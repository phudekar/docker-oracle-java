FROM ubuntu:14.04

MAINTAINER Pradip Hudekar <pradiphudekar@gmail.com>

ARG JAVA_VERSION=7

WORKDIR /root

ADD ./Dockerfile /root

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

RUN echo oracle-java$JAVA_VERSION

RUN \
  echo oracle-java$JAVA_VERSION-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-add-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java$JAVA_VERSION-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk$JAVA_VERSION-installer

ENV JAVA_HOME /usr/lib/jvm/java-$JAVA_VERSION-oracle

ENV PATH=$JAVA_HOME/bin:$PATH
