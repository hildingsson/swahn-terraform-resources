/* Variables - Generic */

variable "resourceGroupName" {
  type        = string
  description = "The name of the Resource Group"
}

variable "resourceGroupLocation" {
  type        = string
  description = "The location where the resource group will be created"
}

variable "resourceGroupTags" {
  type = map(string)
  description = "The tags that will be applied to the resource group"
}

/* Variables - Resource Specific */