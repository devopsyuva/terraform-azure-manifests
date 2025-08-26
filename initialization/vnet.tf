resource "azurerm_virtual_network" "vnet_demo01" {
  # Arguments
  resource_group_name = azurerm_resource_group.rg_demo.name
  location            = "West US" #azurerm_resource_group.rg_demo.location
  address_space       = ["10.200.0.0/16"]
  name                = "VNetDemo"

  tags = {
    "Name"        = "VNetDemo"
    "Environment" = "Development"
    "IaC"         = "Terraform"
  }
}