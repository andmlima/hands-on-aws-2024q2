#fonte terraform installation: https://developer.hashicorp.com/terraform/install#linux 

#!/bin/bash
set -eu
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
terraform --version
