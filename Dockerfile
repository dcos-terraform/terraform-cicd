FROM dcosterraform/terraform-jenkins:0.11.14 

# adding packages for dcos-terraform integration test related stage
RUN apk add --update --no-cache \
  bash \
  ca-certificates \
  curl \
  jq \
  git \
  zlib-dev

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
  wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk && \
  apk add --no-cache glibc-2.29-r0.apk
