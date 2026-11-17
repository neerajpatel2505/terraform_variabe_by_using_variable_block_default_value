terraform {
    required_providers {
        azurerm =  {
            source = "hashicorp/azurerm"
            version = "5.13.0"
        }
    }
}

 variable "resource_group_name" {
    description = "Name of the resource group"
    type = string
    default = "rg-1"
}

variable "resource_group_location" {
    description = "Location of the resource group"
    type = string
    default = "central India"
}

resource "azurerm_resource_group" "rg1" {
    name = var.resource_group_name
    location = var.resource_group_location
     }
     