FROM alpine:3.18.2

#Install curl, git and jq
RUN apk --no-cache add curl git jq aws-cli

#Download and install terraform version 0.13.6
RUN wget https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_linux_amd64.zip
RUN unzip terraform_0.13.6_linux_amd64.zip && rm terraform_0.13.6_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

RUN aws --version && terraform --version
