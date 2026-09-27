# DevOps Infrastructure & Automation

A hands-on DevOps project demonstrating infrastructure provisioning, automation, health validation, and version control using Terraform, Microsoft Azure, Bash, Python, and GitHub.

## Tools & Technologies

* Terraform
* Microsoft Azure
* Azure CLI
* Bash / Shell Scripting
* Python
* Git & GitHub

## Project Structure

```text
devops-infra-automation/
├── scripts/
│   ├── deploy.sh
│   └── health-check.py
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   └── variables.tf
├── .gitignore
└── README.md
```

## What This Project Does

### Terraform

* Provisions an Azure Resource Group and Storage Account.
* Uses variables for configurable infrastructure values.
* Uses Terraform state to track managed resources.
* Supports infrastructure planning and destroy previews.

### Bash Automation

* Automates Terraform initialization, validation, and planning.
* Provides a safe destroy preview using `terraform plan -destroy`.

### Python Health Check

* Executes Azure CLI commands using Python `subprocess`.
* Checks whether the Azure Storage Account exists.
* Parses JSON output from Azure CLI.
* Handles both successful and failed health checks.

## Workflow

```text
Terraform
    ↓
Azure Infrastructure
    ↓
Bash Automation
    ↓
Python Health Check
    ↓
Git & GitHub
```

## Validation

The project was tested by:

* Provisioning Azure resources using Terraform.
* Running Terraform validation and planning.
* Running Bash automation scripts.
* Successfully validating the Azure Storage Account using Python.
* Testing a failure scenario with an invalid Storage Account name.

## Cleanup

To preview infrastructure removal:

```bash
cd terraform
terraform plan -destroy
```

To actually remove the infrastructure:

```bash
cd terraform
terraform destroy
```

## Notes

Terraform state files, the `.terraform` directory, and environment-specific `.tfvars` files are excluded from Git using `.gitignore`.
