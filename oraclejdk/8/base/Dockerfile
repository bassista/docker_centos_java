#################################################################
# Creates a base CentOS 6 image with Oracle Java 8
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

FROM centos

MAINTAINER Paolo Antinori <paolo.antinori@gmail.com>

RUN wget --continue --no-check-certificate --header "Cookie: oraclelicense=a" -O jdk-linux-x64.rpm "http://download.oracle.com/otn-pub/java/jdk/8-b132/jdk-8-linux-x64.rpm"

RUN yum localinstall -y jdk-linux-x64.rpm

RUN rm jdk-linux-x64.rpm

ENV JAVA_HOME /usr/java/default
ENV LANG en_GB.utf8