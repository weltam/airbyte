please find the repo on 

```shell
/home/ubuntu/oss/airbyte
```

# install java 

this should be upgraded to the latest java.. why java 14?

```
sdk install java 11.0.12-zulu
sdk default java 11.0.12-zulu
```

# upgrade docker without sudo


```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
sudo chown root:docker /var/run/docker.sock
sudo chown ubuntu:docker /var/run/docker.sock
```

ref https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

# checkout source code

```
git clone https://github.com/weltam/airbyte.git
cd airbyte
git checkout gv2
SUB_BUILD=PLATFORM ./gradlew build
```

make sure to check this one out

https://github.com/weltam/airbyte/blob/master/docs/contributing-to-airbyte/developing-locally.md

