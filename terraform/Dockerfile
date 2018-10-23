FROM alpine

RUN apk add -u ca-certificates postgresql-client curl
RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
RUN unzip terraform.zip
RUN mv terraform /usr/bin/terraform

ENTRYPOINT [ "/usr/bin/terraform" ]
