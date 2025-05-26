# Terraform Azure: ACR, AKS and NGINX Ingress Controller
## Contents

- [Description](#description)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Things I'd have improved if I had more time](#things-id-have-improved-if-i-had-more-time)

## Description

Terraform codebase to deploy ACR, AKS, and nginx ingress controller on AKS.

## Prerequisites
- Azure CLI must be installed.
- Terraform must be installed.
- You need to login to your Azure account using the CLI.

## Setup

To deploy all the components using the default values, follow this instructions:

```bash
curl -s -L https://github.com/byFrederick/iac-azure-infra/archive/refs/tags/v0.0.1.tar.gz | tar xz
cd iac-azure-infra-0.0.1/environments/nonprod
sed -i 's/subscription_id = ".*"/subscription_id = "your-subscription-id"/' terraform.tfvars.example
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform apply -auto-approve
```

Your components will be up and running.

## Usage

You can modify terraform.tfvars to override default values. Also, you can configure the nginx_ingress_values.yaml to customize the ingress controller deployment. 

## Things I'd have improved if I had more time

- Expand AKS module to be able to create more resources and have a greater customization e.g. additional node pools, configure maintenance windows, and upgrades strategy. 
- Use just one variable for each module of type object.