#!/bin/bash
set -eu
cd ../infrastructure
terraform init
terraform apply -auto-approve
# destroy terraform
#terraform destroy -auto-approve
