FROM python:3

RUN pip install awscli
RUN pip install boto3

RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
RUN unzip -d /usr/local/bin  terraform_0.11.11_linux_amd64.zip

RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.18.0/terragrunt_linux_386 && mv terragrunt_linux_386 /usr/local/bin/terragrunt && chmod 755 /usr/local/bin/terragrunt

RUN mkdir /root/.terraform.d && mkdir /root/.terraform.d/plugins
RUN wget https://github.com/Cox-Automotive/terraform-provider-alks/releases/download/1.2.1/terraform-provider-alks-linux-386.tar.gz
RUN tar -xzf terraform-provider-alks-linux-386.tar.gz && mv terraform-provider-alks_v1.2.1 /root/.terraform.d/plugins

VOLUME /work



