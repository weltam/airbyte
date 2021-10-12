# need to add command how to install docker

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
sudo chown root:docker /var/run/docker.sock
sudo chown ubuntu:docker /var/run/docker.sock