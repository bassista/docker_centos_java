#################################################################
# Creates a base CentOS 6 image with OpenJDK 7
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

RUN yum install -y java-1.7.0-openjdk-devel which

ENV JAVA_HOME /usr/lib/jvm/java-openjdk
ENV LANG en_GB.utf8


