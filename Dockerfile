# tomcat7 running on debian w/ openjdk8 

# let's use a debian 8
FROM debian:jessie

MAINTAINER martin peters

# install java8 and tomcat7
RUN apt-get -y update && \
    apt-get install -y \
        openjdk-8-jre \
        tomcat7

EXPOSE 8080
