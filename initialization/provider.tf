# Terraform settings block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

# Provider block
provider "azurerm" {
  # Configuration options
  subscription_id = "78b195cd-175b-466b-a335-1b18baebc2a8"
  features {}
}