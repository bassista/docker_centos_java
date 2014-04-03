#!/bin/bash
IP_CONTAINER=$(ip -f inet -o addr show eth0 | cut -d ' '  -f 7 | cut -d '/' -f 1)
service iptables start

### specify your desired iptables here

# add rule to accept connection to docker rest api
iptables -A INPUT -p tcp --dport 4243 -j ACCEPT;
# allow all connections already instantiated
iptables -A INPUT -m state --state ESTABLISHED,RELATED -p tcp --destination $IP_CONTAINER -j ACCEPT;

# accept connections to mongo
iptables -A INPUT -p tcp --dport 27017 -j ACCEPT;

# accept connections to couch
iptables -A INPUT -p tcp --dport 5984 -j ACCEPT;

#iptables -A OUTPUT -p tcp  -j REJECT;

# exec is used to correctly handle ctrl signals like CTRL+C
exec ./gradlew "$@"
