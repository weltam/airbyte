please find the repo on 

# todo

- [ ] create modular scripts? or we can use terraform?

```shell
/home/ubuntu/oss/airbyte
```

# install java 

this should be upgraded to the latest java.. why java 14? i've upgrade to the latest 17

```
./setup-java.sh
```

# upgrade gradle to 7.2

needed to comply with jdk 17

# install nodejs

```
./install-nodejs.sh
```

# upgrade docker without sudo

```
./setup-docker.sh
```

ref https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

# checkout source code

```
./build-airbyte.sh
```

make sure to check this one out

https://github.com/weltam/airbyte/blob/master/docs/contributing-to-airbyte/developing-locally.md

 rm -rf buildSrc/.gradle/ buildSrc/build .gradle/

 a lot of issues in docker compatiblity. in testcontainer, postgresql, ryuk etc. 
 
 need to passed java add-opens to Gradle daemon

 https://github.com/gradle/gradle/issues/1461
 https://github.com/mockito/mockito/issues/2436
 https://github.com/mockito/mockito/issues/2315

 need to change all docker to arm multiarch

 https://github.com/docker/for-mac/issues/5142


 FROM arm64v8/openjdk:17-jdk-slim-buster

 FROM arm64v8/nginx:1.21.3-alpine

 FROM arm64v8/postgres:14.0-alpine