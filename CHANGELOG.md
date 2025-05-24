# CHANGELOG

**[Commit: 34232dd**] **- 2025-05-24**

- Added NGINX ingress controller module. I made use of Helm for the deployment.
- Changed environments/dev/main.tf file to use nginx_ingress_controler module.
- Created nginx_ingress_values file which is the values file that will use Helm to deploy the ingress controller
- Changed providers file to add Helm provider

Sources

- https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release
- https://developer.hashicorp.com/terraform/tutorials/kubernetes/helm-provider
- https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx
- https://learn.microsoft.com/en-us/azure/aks/kubernetes-helm

---

**[Commit: c880115**] **- 2025-05-24**

- Added identity module which attach the registries to the cluster module. It uses the managed identity of the cluster and identity of the registry to create an assigment of the role AcrPull to the cluster.
- Used for_each because we have the ability create multiple registries
- Changed environments/dev/main.tf file to use identity module

Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry

---

**[Commit: 9dbef96**] **- 2025-05-24**

- Added AKS module.
- Changed environments/dev/main.tf file to use AKS module

Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster
- https://learn.microsoft.com/en-us/azure/aks/
- https://seetharamkoya9.medium.com/azure-kubernetes-service-aks-network-plugins-62aa8929a008
- https://developer.hashicorp.com/terraform/tutorials/kubernetes/aks

---

**[Commit: fddd0b7**] **- 2025-05-24**

- Added ACR module.
- Changed environments/dev/main.tf file to use ACR module, I make use of for_each to be able to create multiple registries passing a map of container registries

Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry
- https://learn.microsoft.com/en-us/azure/container-registry/container-registry-intro
- https://developer.hashicorp.com/terraform/language/expressions/for

---

**[Commit: 7e39878**] **- 2025-05-23**

- Added network module to create the vnet and subnet where aks will be deployed
- Added dev environment that will use all the modules

Sources

- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

---

**[Commit: 943a299] - 2025-05-23**

- Initialized folder structure