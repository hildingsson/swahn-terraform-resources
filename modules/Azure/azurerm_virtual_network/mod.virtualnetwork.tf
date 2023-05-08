terraform {
  required_version = "1.3.9"
}

provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "azurerm_virtual_network_module" {
  name = var.virtualNetworkName
  location = azurerm_resource_group.azurerm_resource_group_module.location
}

