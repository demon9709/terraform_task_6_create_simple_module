terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "app.terraform.io/ddd111222/resource_group_storage/azurerm"
  version = "1.0.0"
}

output "storage_account_name" {
  value = module.resource_group_storage.storage_account_name
}

output "resource_group_name" {
  value = module.resource_group_storage.resource_group_name
}
