resource "azurerm_virtual_network" "vnet_demo01" {
  # Arguments
  resource_group_name = azurerm_resource_group.rg_demo.name
  location            = "East US"
  address_space       = var.cidr
  name                = var.vnet_name

  lifecycle {
    # ignore_changes = [ address_space ]
    # prevent_destroy = true
    # create_before_destroy = true
  }

  tags = merge(
    var.vnet_tags,
    local.common_tags
  )
}