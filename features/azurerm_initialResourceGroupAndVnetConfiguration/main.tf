terraform {
  required_version = "1.3.9"
}

provider "azurerm" {
    features {}
}

module "azurerm_resource_group_module" {
    source = "../../modules/Azure/azurerm_resource_group"
}
