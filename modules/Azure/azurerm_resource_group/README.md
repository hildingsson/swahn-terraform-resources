# Module: Resource Group
| Author  | Jimmy Hildingsson |
| ------- | ----------------- |
| Version | 1.0.0             |

## Description
This Terraform module allows you to easily create an <a href="https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group#tags">Azure Resource Group</a> in your Azure subscription. The module abstracts away the complexity of creating a resource group and provides a simple interface for you to configure the resource group properties.

### Variables
Below are the variables used in this module.
| Variable              | Type        | Description                                | Example             |
| --------------------- | ----------- | ------------------------------------------ | ------------------- |
| resourceGroupName     | String      | Defines the name of the resource group     | `jhi-dev-rg-001`    |
| resourceGroupLocation | String      | Defines the location of the resource group | `West Europe`       |
| resourceGroupTags     | Map(string) | Defines the tags of the resource group     | `environment = dev` |

### Code explanation
The code snippet below states the entire resource block used to create the Azure Resource Group using Terraform.
```terraform
resource "azurerm_resource_group" "azurerm_resource_group_module" {
  name     = var.resourceGroupName
  location = var.resourceGroupLocation
  tags     = var.resourceGroupTags
}
```
In order to create the Resource Group the type of resource is specified and given a name that is used when referencing the resource in Terraform.
```terraform
resource "azurerm_resource_group" "azurerm_resource_group_module"
```
The name of the resource is provided using a variable. The variable can be found in the file _variables.tf_
```terraform
name     = var.resourceGroupName
```

The location of the resource is provided using a variable. The variable can be found in the file _variables.tf_
```terraform
location = var.resourceGroupLocation
```

The tags of the resource is provided using a variable. The variable can be found in the file _variables.tf_
```terraform
tags     = var.resourceGroupTags
```

## How to use module

### Inputs
The following input variables are used for the module, and the ones marked with **required** must be present when calling the module.
| Variable              | Type        | Requirement      | Description                                | Example             |
| --------------------- | ----------- | ---------------- | ------------------------------------------ | ------------------- |
| resourceGroupName     | String      | **Required**     | Defines the name of the resource group     | `jhi-dev-rg-001`    |
| resourceGroupLocation | String      | **Required**     | Defines the location of the resource group | `West Europe`       |
| resourceGroupTags     | Map(string) | **Not Required** | Defines the tags of the resource group     | `environment = dev` |

### Outputs
This module exports the following output variables.
| Name       | Description                            |
| ---------- | -------------------------------------- |
| `id`       | The ID of the resource group           |
| `name`     | The name of the resource group         |
| `location` | The location of the resource group     |
| `tags`     | The tags applied to the resource group |

## References
| Technology             | Hyperlink                                                                                           |
| ---------------------- | --------------------------------------------------------------------------------------------------- |
| Azurerm Resource Group | https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group#tags |
