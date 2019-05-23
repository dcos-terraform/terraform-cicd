FROM ubuntu:18.04
ENV TF_VERSION=0.11.13-mesosphere

# Jenkins Prereq for Mesos Agents
RUN apt-get update

# Prerequisites for mono dcos-terraform
RUN apt-get install -y git                  \
                       make                 \
                       wget                 \
                       musl-dev             \
                       bash                 \
                       rsync                \
                       jq                   \
                       unzip                \
                       curl                 \
                       default-jre-headless

RUN wget https://github.com/fatz/terraform/releases/download/v${TF_VERSION}/linux_amd64.zip -O ./temp.zip && unzip -o ./temp.zip -d /bin/ && rm -f ./temp.zip
