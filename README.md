# to build loading from specific Docker files
`docker build -t file_name - < Dockerfile.test`

# Build base jdk images

```
docker build -t openjdk7 - < Dockerfile.openjdk7
docker build -t oraclejdk7 - < Dockerfile.oraclejdk7
```

# Install Maven on the prev images
```
docker build -t openjdk7_maven - < Dockerfile.openjdk7_maven
docker build -t oraclejdk7_maven - < Dockerfile.oraclejdk7_maven
```


# To quickly verify that you are using the expected jdk:

```
docker run -t -i oraclejdk6 java -version
```

# Run a container mounting the project folder

```
\# -v mounts a host folder into the container filesystem
docker run -t -i \
  -v /data/repositories/github/personal/test/test:/data/repositories/github/personal/test/test \
  -v ~/.m2/repository:/root/.m2/repository \
  oraclejdk7_maven bash
\# and once in the container cd to the mounted folder and build with "mvn clean install".  
\# The compiled files will be available on the filesystem in the host
```