#!/bin/bash

set -e

echo "Initializing Terraform..."
cd "$(dirname "$0")/../terraform"

terraform init

echo "Validating Terraform configuration..."
terraform validate

echo "Creating Terraform plan..."
terraform plan

echo "Terraform deployment completed successfully."
