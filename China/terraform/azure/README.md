# Check Point Terraform deployment modules for Azure CN

This project was developed to allow Terraform deployments for Check Point CloudGuard IaaS solutions on Azure.


These modules use Terraform's [Azurerm provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs) in order to create and provision resources on Azure.


 ## Prerequisites

1. [Download Terraform](https://www.terraform.io/downloads.html) and follow the instructions according to your OS.
2. Get started with Terraform Azurerm provider - refer to [Terraform Azurerm provider best practices](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs).

## Modifications for Azure China Deployment Using Terraform
0. Set the Azure cloud to AzureChinaCloud
Before starting, set the Azure cloud environment to AzureChinaCloud:
```
az cloud set --name AzureChinaCloud
```
1. Modify the environment configuration and skip provider registration in azurerm
Updated all main.tf files to include the environment configuration and set skip_provider_registration to true.
The value of environment is set to china:
```
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
  environment = var.environment
  skip_provider_registration = true
  features {}
}
```
2. Remove the plan configuration in azurerm_virtual_machine
Removed the plan block from azurerm_virtual_machine resources in main.tf:
```
resource "azurerm_virtual_machine" "mgmt-vm-instance" {
dynamic "plan" {
    for_each = local.custom_image_condition ? [
    ] : [1]
    content {
      name = module.common.vm_os_sku
      publisher = module.common.publisher
      product = module.common.vm_os_offer
    }
  }
}
```
3. Update the publisher field in common/variables.tf
Changed the default value of the publisher variable to match the Azure China marketplace:
```
variable "publisher" {
  description = "CheckPoint publisher"
  default = "sinoage"
}
```
4. Add AzureChinaCloud in cme auto_prov and autoprov_cfg
Updated auto-provisioning commands to include the AzureChinaCloud environment:
```
auto_prov, autoprov_cfg set controller Azure -cn Azure-Production --environment AzureChinaCloud
```
5. Register providers for Azure China
Registered the required providers for Azure China with the following commands:
```
az provider register --namespace Microsoft.Network --consent-to-permissions --verbose
az provider register --namespace Microsoft.Storage --consent-to-permissions --verbose
az provider register --namespace Microsoft.Compute --consent-to-permissions --verbose
az provider register --namespace Microsoft.insights --consent-to-permissions --verbose
```