#### TL;DR:

```
sh build-images.sh
docker run -t -i oraclejdk6 java -version
```

#### Extendend instructions

#####  build from specific Docker file
```
docker build -t file_name - < Dockerfile.test
```


##### quickly verify that you are using the expected jdk:

```
docker run -t -i oraclejdk6 java -version
```

##### run a container, sharing it some host folder in rw

```
# -v mounts a host folder into the container filesystem
docker run -t -i \
  -v /data/repositories/github/personal/test/test:/data/repositories/github/personal/test/test \
  -v ~/.m2/repository:/root/.m2/repository \
  oraclejdk7_maven bash
# and once in the container cd to the mounted folder and build with "mvn clean install".  
# The compiled files will be available on the filesystem in the host
```
