# Alpine Linux v3.9.0 | https://hub.docker.com/r/hashicorp/terraform/dockerfile
FROM hashicorp/terraform:0.11.13 

# Prerequisites for mono dcos-terraform
RUN apk add git      \
            make     \
            go       \
            musl-dev \
            bash     \
            rsync
