#!/bin/sh

NAMES='openjdk7 openjdk7_maven oraclejdk7 oraclejdk7_maven oraclejdk6 oraclejdk6_maven oraclejdk8 oraclejdk8_maven'

for name in $NAMES; do
	echo "** Building $name."
    docker build -t $name - < Dockerfile."$name"
    echo ""
done