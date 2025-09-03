module "vnet_demo" {
  source  = "Azure/vnet/azurerm"
  version = "5.0.1"

  resource_group_name = "databases"
  vnet_location       = "East US"
  vnet_name           = "VNetDemo"
  address_space       = ["10.210.0.0/16"]
  subnet_prefixes     = ["10.210.0.0/24", "10.210.1.0/24", "10.210.2.0/24"]
}