# Alpine Linux v3.9.0 | https://hub.docker.com/r/hashicorp/terraform/dockerfile
FROM hashicorp/terraform:0.11.13 
ENV TF_VERSION=0.11.13-mesosphere

# Jenkins Prereq for Mesos Agents
RUN apk add --update --no-cache openjdk8-jre
RUN wget https://github.com/fatz/terraform/releases/download/v${TF_VERSION}/linux_amd64.zip -O ./temp.zip && unzip -o ./temp.zip -d /bin/ && rm -f ./temp.zip

# Prerequisites for mono dcos-terraform
RUN apk add git      \
            make     \
            go       \
            musl-dev \
            bash     \
            rsync    \
            jq
