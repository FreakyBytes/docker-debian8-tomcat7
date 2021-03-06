# tomcat7 running on debian w/ openjdk8 

# let's use a debian 8
FROM debian:jessie-backports

MAINTAINER martin peters

EXPOSE 8080

# install java8 and tomcat7
RUN apt-get -y update && \
    apt-get -y install  \
        openjdk-8-jre \
        tomcat7

# helper script
COPY start-tomcat.sh /usr/bin/start-tomcat.sh
RUN chmod +x /usr/bin/start-tomcat.sh

ENTRYPOINT /usr/bin/start-tomcat.sh
