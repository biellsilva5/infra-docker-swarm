#!/bin/bash
########################################################
## To execute the script, run the following command:   #
# chmod +x setup.sh                                    #
########################################################

apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

# Initialize Docker Swarm
docker swarm init

docker stack deploy -c stacks/ portainer-agent-stack.yml portainer


