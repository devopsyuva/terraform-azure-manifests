# Terraform settings block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "way2techstackstatefiles"
    container_name       = "terraformstatefiles"
    key                  = "terraform.tfstate"
    resource_group_name  = "databases"
  }
}

# Provider block
provider "azurerm" {
  # Configuration options
  subscription_id = "78b195cd-175b-466b-a335-1b18baebc2a8"
  #features {}
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}