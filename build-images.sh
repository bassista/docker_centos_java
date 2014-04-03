#!/bin/sh

##### openjdk7
(cd openjdk/7/base ; docker build -t openjdk7:base .)
(cd openjdk/7/maven ; docker build -t openjdk7:maven .)
(cd openjdk/7/hibernate/base ; docker build -t openjdk7:hibernate_base .)
(cd openjdk/7/hibernate/maven ; docker build -t openjdk7:hibernate_maven .)
(cd openjdk/7/hibernate/gradle ; docker build -t openjdk7:hibernate_gradle .)

##### oraclejdk
(cd oraclejdk/6/base ; docker build -t oraclejdk6:base .)
(cd oraclejdk/6/maven ; docker build -t oraclejdk6:maven .)
(cd oraclejdk/7/base ; docker build -t oraclejdk7:base .)
(cd oraclejdk/7/maven ; docker build -t oraclejdk7:maven .)
(cd oraclejdk/8/base ; docker build -t oraclejdk8:base .)
(cd oraclejdk/8/maven ; docker build -t oraclejdk8:maven .)

docker images