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

FROM openjdk7:hibernate_base

MAINTAINER Paolo Antinori <paolo.antinori@gmail.com>

ADD ./start.sh /
RUN chmod a+x /start.sh

CMD ["help:help"]
ENTRYPOINT ["/start.sh"]
