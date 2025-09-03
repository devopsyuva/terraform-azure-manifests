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