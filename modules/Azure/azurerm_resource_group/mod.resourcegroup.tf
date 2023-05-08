terraform {
  required_version = "1.3.9"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "azurerm_resource_group_module" {
  name     = var.resourceGroupName
  location = var.resourceGroupLocation
  tags     = var.resourceGroupTags
}
