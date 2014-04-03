#################################################################
# Creates a base CentOS 6 image with Oracle Java 7
#
#                    ##        .
#              ## ## ##       ==
#           ## ## ## ##      ===
#       /""""""""""""""""\___/ ===
#  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#       \______ o          __/
#         \    \        __/
#          \____\______/
#
# Author:    Paolo Antinori <paolo.antinori@gmail.com>
# License:   MIT
#################################################################

FROM oraclejdk6:base

MAINTAINER Paolo Antinori <paolo.antinori@gmail.com>

RUN cd /tmp; wget http://www.eu.apache.org/dist/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz
RUN cd /opt; tar -xzf /tmp/apache-maven-*-bin.tar.gz; mv apache-maven-* maven; ln -s /opt/maven/bin/mvn /usr/local/bin; rm -rf /tmp/*	

