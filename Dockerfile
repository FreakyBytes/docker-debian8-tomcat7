# tomcat7 running on debian w/ openjdk8 

# let's use a debian with installed open-jdk8
FROM binfalse/d-java8

MAINTAINER martin peters

# install tomcat7
RUN apt-get -y update && \
    apt-get install -y \
        tomcat7
