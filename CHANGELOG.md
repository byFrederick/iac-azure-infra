# CHANGELOG

## [Commit: [225d10e](https://github.com/byFrederick/iac-azure-infra/commit/225d10e155748f0549f1fe18ef5cd9a23c1bf165)] - 2025-05-24

- Fixed CHANGELOG

---

## [Commit: [d2234ed](https://github.com/byFrederick/iac-azure-infra/commit/d2234ed8cf09e146170d29a39a45d8f2c6513a70)] - 2025-05-24

- Added terraform.tfvars example file and CHANGELOG

---

## [Commit: [cdbea3a](https://github.com/byFrederick/iac-azure-infra/commit/cdbea3a62964192b9386e8a19ad887e9b197839d)] - 2025-05-24

- Stopped tracking terraform lock file

---

## [Commit: [4e232e7](https://github.com/byFrederick/iac-azure-infra/commit/4e232e745d46b4be2d6ec8c07ac798d04bfeb0c0)] - 2025-05-24

- Fixed .gitignore

---

## [Commit: [34232dd](https://github.com/byFrederick/iac-azure-infra/commit/34232dd5fd04db0014635d941326bb9bbcc38de8)] - 2025-05-24

- Added NGINX ingress controller module. I made use of Helm for the deployment.
- Changed environments/dev/main.tf file to use nginx_ingress_controler module.
- Created nginx_ingress_values file which is the values file that will use Helm to deploy the ingress controller
- Changed providers file to add Helm provider

### Sources

- https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release
- https://developer.hashicorp.com/terraform/tutorials/kubernetes/helm-provider
- https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx
- https://learn.microsoft.com/en-us/azure/aks/kubernetes-helm

---

## [Commit: [c880115](https://github.com/byFrederick/iac-azure-infra/commit/c8801151271ff8ca8a0ac9af3a6aa7b5bdb55c8c)] - 2025-05-24

- Added identity module which attach the registries to the cluster module. It uses the managed identity of the cluster and identity of the registry to create an assigment of the role AcrPull to the cluster.
- Used for_each because we have the ability create multiple registries
- Changed environments/dev/main.tf file to use identity module

### Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry

---

## [Commit: [9dbef96](https://github.com/byFrederick/iac-azure-infra/commit/9dbef966adf4aafb25f5679f5798e3a21987698e)] - 2025-05-24

- Added AKS module.
- Changed environments/dev/main.tf file to use AKS module

### Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster
- https://learn.microsoft.com/en-us/azure/aks/
- https://seetharamkoya9.medium.com/azure-kubernetes-service-aks-network-plugins-62aa8929a008
- https://developer.hashicorp.com/terraform/tutorials/kubernetes/aks

---

## [Commit: [fddd0b7](https://github.com/byFrederick/iac-azure-infra/commit/fddd0b7db68f68f406a158c592ec6931dcb6f430)] - 2025-05-24

- Added ACR module.
- Changed environments/dev/main.tf file to use ACR module, I make use of for_each to be able to create multiple registries passing a map of container registries

### Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry
- https://learn.microsoft.com/en-us/azure/container-registry/container-registry-intro
- https://developer.hashicorp.com/terraform/language/expressions/for

---

## [Commit: [7e39878](https://github.com/byFrederick/iac-azure-infra/commit/7e39878d75c72ea725287f8a4c35be7e9ec86f0c)] - 2025-05-23

- Added network module to create the vnet and subnet where aks will be deployed
- Added dev environment that will use all the modules

### Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

---

## [Commit: [943a299](https://github.com/byFrederick/iac-azure-infra/commit/943a299edd4d6a738cb406ca6a74cb0ed8bc78d2)] - 2025-05-23

- Initialized folder structure