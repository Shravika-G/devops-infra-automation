#!/bin/bash

set -e

echo "Starting Terraform destroy..."
cd "$(dirname "$0")/../terraform"

terraform plan -destroy

echo "Destroy plan generated."
echo "Review the plan before running terraform destroy."
