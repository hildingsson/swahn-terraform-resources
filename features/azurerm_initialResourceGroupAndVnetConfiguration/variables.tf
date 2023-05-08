/* Variables - Generic */

variable "resourceGroupName" {
  type        = string
  description = "The name of the Resource Group"
  default     = "rg-02"
}

variable "resourceGroupLocation" {
  type        = string
  description = "The location where the resource group will be created"
  default     = "westeurope"
}

variable "resourceGroupTags" {
  type = map(string)
  description = "The tags that will be applied to the resource group"
  default = {
    "environment" = "dev"
    "deployment"  = "terraform"
  }
}

/* Variables - Resource Specific */