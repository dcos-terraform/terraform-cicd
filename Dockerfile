FROM dcosterraform/terraform-jenkins:0.11.14 

# adding packages for dcos-terraform integration test related stage
RUN apk add --update --no-cache \
  bash \
  ca-certificates \
  curl \
  jq \
  git \
  libc6-compat      
