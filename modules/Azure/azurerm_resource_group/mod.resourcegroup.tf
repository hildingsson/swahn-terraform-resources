terraform {
  required_version = "0.12"
}

provider "azurerm" {

}

resource "azurerm_resource_group" "azurerm_resource_group_module" {
  name     = var.resourceGroupName
  location = var.resourceGroupLocation
  tags     = var.resourceGroupTags
}
