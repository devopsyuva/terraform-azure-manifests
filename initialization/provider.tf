# Terraform settings block
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

# Provider block
provider "azurerm" {
  # Configuration options
}